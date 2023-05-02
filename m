Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2E366F3B24
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 02:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231428AbjEBAAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 20:00:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230008AbjEBAAR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 20:00:17 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E47835AC
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 17:00:16 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-63f273b219eso2263251b3a.1
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 17:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1682985616; x=1685577616;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVPD7LCIYEjnGcS4W60wPpbqQrrQeR8iu5kz2d7F+Uk=;
        b=USsZG1TBQuABriuIzboKRMi4j9Qabdy7EQK9cWxLH+f2LtYZitY5S8oGQQmcGAq91i
         XEBdwCjnNVAgAEyNblON5OK2s0h3os8Ph18kGzoiMW7o+Dhm226fDs74UHKPY1+Xti0r
         DpYHPyWWI55Xn7kfOvH/E1u04CwGffBgXdbbrnwIm6o5aXxN8NJSmy0NVOLcEW68nwb9
         9mrK+BXDTF7H+d7Yu1JN+OKPvBGPeGyEkEGXMGAxpEkDv3rvPrYul84INOtt6cWZX00e
         pxJHBEyfXb34Z4YpB2p0+OWN8yV4DVz/idzFaFv5/I+MkscMfJmGNjY+ypB5PqGMcyK6
         aVaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682985616; x=1685577616;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hVPD7LCIYEjnGcS4W60wPpbqQrrQeR8iu5kz2d7F+Uk=;
        b=dcdE4T890d7uHs706l5/+974p4arRvdHimN2cFK739gYYOgH4NwLxf012SDsl8gv+i
         OdjN1goTUoNw3YWi5UD/1NWg6jRHrhwEpul+TciolJS0S6xuknKc/J6EKUDSvQRmxqQo
         Jfl6OPL6rep7I3w5IxoyUhwFDWEw9Bld+H/aKoFVdRMrcv8Q511ckP1jAlY0PeVaaYDF
         8qQ4rxjOijhwL9FoE+quFfO2ybxFVgWmIbUYoqx7jhGQ3rYHj4CJafGOq33U4uaooUUO
         HDmkWx9jnyPslNlgas3wZyg48znPK4kz7LKqez9d92wIbnq4Rq4eAmJU9pg4O9/UYFnp
         Jhyg==
X-Gm-Message-State: AC+VfDyLLty7CmyJ+f/KP1YfVkotPh+YT6YF9a71VwJKdZRrh2FTE30B
        6H7GD50rcF22DLD0puKw91Lilg==
X-Google-Smtp-Source: ACHHUZ4WXfPj9SWiDxU7NAUDEKWrYfXvWG9K+1cbxVQF6JOx6c+tN0HQ7ovKzZhJFq3mr4oKwAGNTQ==
X-Received: by 2002:a05:6a00:181e:b0:624:7c9a:c832 with SMTP id y30-20020a056a00181e00b006247c9ac832mr22721656pfa.8.1682985615800;
        Mon, 01 May 2023 17:00:15 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id f14-20020a056a00238e00b00640f51801e6sm11176010pfc.159.2023.05.01.17.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 17:00:15 -0700 (PDT)
Date:   Mon, 01 May 2023 17:00:15 -0700 (PDT)
X-Google-Original-Date: Mon, 01 May 2023 16:59:12 PDT (-0700)
Subject:     Re: [PATCH v1] dt-bindings: riscv: explicitly mention assumption of Zicsr & Zifencei support
In-Reply-To: <20230427-fence-blurred-c92fb69d4137@wendy>
CC:     Conor Dooley <conor@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Message-ID: <mhng-7defe716-2138-496e-908b-41e7c553da74@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 27 Apr 2023 03:43:42 PDT (-0700), Conor Dooley wrote:
> The dt-binding was defined before the extraction of csr access and
> fence.i into their own extensions, and thus the presence of the I
> base extension implies Zicsr and Zifencei.
> There's no harm in adding them obviously, but for backwards
> compatibility with DTs that existed prior to that extraction, software
> is unable to differentiate between "i" and "i_zicsr_zifencei" without
> any further information.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Conor Dooley <conor@kernel.org>
> CC: Rob Herring <robh+dt@kernel.org>
> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: linux-riscv@lists.infradead.org
> CC: devicetree@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index 4c7ce4a37052..a93bc7eae928 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -85,6 +85,12 @@ properties:
>        User-Level ISA document, available from
>        https://riscv.org/specifications/
>
> +      Due to revisions of the ISA specification, some deviations
> +      have arisen over time.
> +      Notably, riscv,isa was defined prior to the creation of the
> +      Zicsr and Zifencei extensions and thus "i" implies
> +      "zicsr_zifencei".

also Zihpm and Zicntr.  I'm going to put this one on for-next, though.

Thanks!

> +
>        While the isa strings in ISA specification are case
>        insensitive, letters in the riscv,isa string must be all
>        lowercase to simplify parsing.
