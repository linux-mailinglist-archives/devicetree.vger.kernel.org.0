Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCFA1516FE6
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 14:57:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350587AbiEBNBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 09:01:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234640AbiEBNBR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 09:01:17 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52F3915A23
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 05:57:48 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id r1-20020a1c2b01000000b00394398c5d51so1491256wmr.2
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 05:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/oxxwZu+bujgmZ0WqvFB4CIjaE6g3QCDr/7SdNoyaHk=;
        b=VvfStjBWybuvJaTN7Q8kOcgNpUxyufiIHFyNjfyXIGTH0wmMPUtG6wA2D/WD1T3wS7
         PnNLVyDdFX93ywHIFEOYEFqAVmySXl2SicG5lP8zzRnzcEFPbE+sGbqrBZVGiDRIvVZo
         WXX5RWlY8YXWUM7+CKw4UQtgzaN6V6SbDqAD2sMTNGNnbJ3s1UzEtEhR9yp7EVTM+Qaa
         THsM71bj6I6HzVC68+K/ZRa1WpD9AmEcMnhETCtv3m5/ZJVTkww/vIQMrGvdWhuzB75s
         bnplIlemCILH8LHmD5hDyro52c2bUJotB5VzXFIK/2OJ2hPCfn/Pr+wjHz3fC/daceMG
         yleQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/oxxwZu+bujgmZ0WqvFB4CIjaE6g3QCDr/7SdNoyaHk=;
        b=HI2ssVYI9mqn+5XKM2e+jUQ0y2NAtHbDas+DCKgBImIKb/oYWTex8FQz+E5sE6+IFf
         KpOXuqQOHMQiQKTHCtjYLRjxhXzrwu/gQ/XkXOV3Pyr7Ze2fZ1WBZM01DYeA1cv/IbWL
         KU2B8g/X0YjVNE3wFMYdnIudvRkM1zDMHFgtmwgt0X/5XeETZa23Iz1vUNkwkPzRd31Q
         kcFcpj/ikkSnK/Kt7WAva4ybkOUP0ml9zDOhk2J/GN0Lipm+gvgYfTuxGiGowoizAiD0
         YCzJHcsE6LJ2ze8CL658pNnaWHkvGgp5e/3EmMeDAOo5V2bhhBbMtNE0IPndM3c4nwIZ
         rOfA==
X-Gm-Message-State: AOAM531h+jNkti76vgJQ3S1a05neTZAJCPk2Xu71mLL5upPqhEyhIsfk
        gQwtDGCXj7m3rmFwAvatiXjTYQWmLhu1+7G5SvUPNA==
X-Google-Smtp-Source: ABdhPJxnolsj9BVAydioN0xjjlxrG0HC8ksApATCHpDRdJuKFrryI9K0ei6M60/rOuukgzpIp0AWFp/U7X+73SpDaFQ=
X-Received: by 2002:a7b:c190:0:b0:394:116d:5e0b with SMTP id
 y16-20020a7bc190000000b00394116d5e0bmr14726680wmi.108.1651496266692; Mon, 02
 May 2022 05:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220502125015.1345312-1-niklas.cassel@wdc.com> <20220502125015.1345312-2-niklas.cassel@wdc.com>
In-Reply-To: <20220502125015.1345312-2-niklas.cassel@wdc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 2 May 2022 18:27:34 +0530
Message-ID: <CAAhSdy3wKn1FoKyq+O_n_iWXSLxq_EZXrxTD99fb+ABFfKc0NA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: riscv: Add mmu-type riscv,sv57
To:     Niklas Cassel <niklas.cassel@wdc.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 2, 2022 at 6:20 PM Niklas Cassel <niklas.cassel@wdc.com> wrote:
>
> sv57 is defined in the RISC-V Privileged Specification document.
>
> Additionally, commit 011f09d12052 ("riscv: mm: Set sv57 on defaultly")
> changed the default MMU mode to sv57, if supported by current hardware.
>
> Add riscv,sv57 to the list of valid mmu-type values.
>
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> Acked-by: Rob Herring <robh@kernel.org>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index d632ac76532e..3100fa233ca4 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -61,6 +61,7 @@ properties:
>        - riscv,sv32
>        - riscv,sv39
>        - riscv,sv48
> +      - riscv,sv57
>        - riscv,none
>
>    riscv,isa:
> --
> 2.35.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
