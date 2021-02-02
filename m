Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0332230C8A1
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 18:57:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237937AbhBBR4p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 12:56:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237871AbhBBRyz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 12:54:55 -0500
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09849C06178B
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 09:54:15 -0800 (PST)
Received: by mail-il1-x135.google.com with SMTP id a16so2225094ilq.5
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 09:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=em1FpT76uug6DRAz+4wTkbqjvjPRUJbYEn1f/uXEBkc=;
        b=es1uit2HfGMVdqh9KRuE00YwmSOw/LtKw9dF+RBHEuOobPOd5UB2ON0C1scC8DXQsu
         h4HTBMfoz8VswROhsBOQV+eBth0ukHUPVt9skA/puLsRkhY6FEgLMpFW9WQvQ8SUMhjm
         kxtdqUheHLj10zadoZClVE+abU2XIzfRyNRPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=em1FpT76uug6DRAz+4wTkbqjvjPRUJbYEn1f/uXEBkc=;
        b=EZzQYVpc4hY8hEvojNSjfFAcRPDEvqThyL11YqTkCQOmd9lep7/WgkFxJNXi4RLOvu
         W/VEKj4FolmSZdPtG5rVkhhcB2o8LTYlgl00LhhV3MamT+F+oUpBlQntxBkDYpEsPrSl
         veMg2TsflIQDDTXVeJda+A1TYAtpbQcr5ZUyR2+akEvDZ38GkBR0izKyCOMF6sq+TeRZ
         JcuyaUQBLc5eVAMsUlIAHFBqx/XZPyG5BE0HkE2T8uVevKIu11EAAwcl/GuMnIi4D0c4
         A+4XEVSPbUIIIk32eaI1PUUxVwvHhR24SbEbtin4y5FiSS+AUFTN9WrZCpCZYERJm1Ql
         BVtA==
X-Gm-Message-State: AOAM53118yWXaSRlDfc4h8QnqsWBSlewx6sQD6gEiwfa9++cyhKI14Va
        b4Ulzf5XXbCc0zCHpjINjMQZwq47L9hUwyE5uzYq
X-Google-Smtp-Source: ABdhPJxLRLtfvAv0tI0BuFoAM4y6OkPK0G+kVXthqwdJx1/kacdheNgneo0jm2r7jkxeZMPdsGkLjNOWV0cJf63cW3I=
X-Received: by 2002:a92:cd8e:: with SMTP id r14mr18683723ilb.77.1612288454471;
 Tue, 02 Feb 2021 09:54:14 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-4-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-4-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 2 Feb 2021 09:54:02 -0800
Message-ID: <CAOnJCUK4Pg25hAFULAZMMM6oEZugPJXw9bbNT6eo-1_+sHV2cQ@mail.gmail.com>
Subject: Re: [PATCH v14 03/16] dt-bindings: update risc-v cpu properties
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh@kernel.org>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Atish Patra <atish.patra@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 2:37 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> The Canaan Kendryte K210 SoC CPU cores are based on a rocket chip
> version using a draft verion of the RISC-V ISA specifications. To avoid
> any confusion with CPU cores using stable specifications, add the
> compatible string "canaan,k210" for this SoC CPU cores.
>
> Also add the "riscv,none" value to the mmu-type property to allow a DT
> to indicate that the CPU being described does not have an MMU or that
> it has an MMU that is not usable (which is the case for the K210 SoC).
>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index eb6843f69f7c..e534f6a7cfa1 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -39,6 +39,7 @@ properties:
>                - sifive,u74
>                - sifive,u5
>                - sifive,u7
> +              - canaan,k210
>            - const: riscv
>        - const: riscv    # Simulator only
>      description:
> @@ -56,6 +57,7 @@ properties:
>        - riscv,sv32
>        - riscv,sv39
>        - riscv,sv48
> +      - riscv,none
>
>    riscv,isa:
>      description:
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
