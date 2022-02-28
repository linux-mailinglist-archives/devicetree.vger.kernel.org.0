Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBAE44C6609
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 10:48:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233209AbiB1JtO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 04:49:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234483AbiB1JtN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 04:49:13 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09914237CB
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:48:34 -0800 (PST)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A053D3FCAC
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646041713;
        bh=lhADqiiCNl+v4LvWzSVnM4zA8m7wbEVtsgLwiPo5Dak=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=i/P1KEDJ965HUZsvBYtEznOmNfh61Mt2N5Pq8vyKj+u3vzemfDTjIseE7GfCJvMWc
         iN5W6ZcOV7AdVk/DwgV2F3EITw5Dk72ChXtsajYu9efBwbg5goSfwW05fKgnVljphC
         gAl6klp+oODY3ztHiJFcvb/gHh/OnW1RrpICRC9zj4u2skRAJs0fH1ST6V8v6y1MOr
         vNH1JNKXt8gVzoKkQ0ccbzpqFlP1oS+JKoAe2w7cbBkRvaeEUsYf+0fPRKlrUpGWfp
         1t1Lda3F1lX1CAvnQBqUyr9LjEOQB62wvK1Gn9Y8AqN6O6q7ULDEsbVpuLb8kZHg/n
         X4rhUz9I/gvUA==
Received: by mail-wr1-f69.google.com with SMTP id t8-20020adfa2c8000000b001e8f6889404so1866642wra.0
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 01:48:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lhADqiiCNl+v4LvWzSVnM4zA8m7wbEVtsgLwiPo5Dak=;
        b=enQQj8/cbT4vuMOMw1GAuRF19hFSvW2NsWLKsYlgwgdYJyPoNlgSG4fB34xctripZn
         aoQg4NBF+v3hfb31RPlAx9ELDp4bJpkiWbs80OMajv61lnSEWU2hjQTO4KlnHRbNh0rH
         5RJgiAQEQKtlxfnBjyAjsxCLP8onxODT48slDsrJA8fqDkdcqe8HW9s3utRZQvhDeynq
         Frd5+OBw8OgovY79KrsMseVcDSS8lMpjpp6yeDWjbCxQGuQh8aS34ZtB+LD9Sr+5h8L7
         Dvxtxv/qeGi+Dbrni2MVoTmP2guFKoQ6bHBhKLkwfYxOfIKslV2hJEtmAN6kx0AJih3P
         kE+w==
X-Gm-Message-State: AOAM530nmlckD8sRRHyAZUM7vWyhlNfyTQTOZh860QpNvHQLWWeQxVCH
        kpyvXLiZwl8G+gEBBevo517JwfOW/ABV57Ow8IrSMh/Gt6wFHX9aEPVItEAmDZYHFZKiiez4osM
        IJbrHTX0oSchNQwYsXys8bC7oaMNDkOpzNSmytAw=
X-Received: by 2002:a05:600c:3007:b0:381:271:49a1 with SMTP id j7-20020a05600c300700b00381027149a1mr12333372wmh.79.1646041713360;
        Mon, 28 Feb 2022 01:48:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxTbCVneuqj/uDRq1eBco71uCyPYVBYE803Kec/okcfd4SBAVH6yz/3e368hmSg5gul/1nKMQ==
X-Received: by 2002:a05:600c:3007:b0:381:271:49a1 with SMTP id j7-20020a05600c300700b00381027149a1mr12333353wmh.79.1646041713220;
        Mon, 28 Feb 2022 01:48:33 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id r1-20020a5d4941000000b001ed89dcacbbsm9894594wrs.23.2022.02.28.01.48.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 01:48:32 -0800 (PST)
Message-ID: <93cc64a8-327c-379a-4af7-c8faa1191c39@canonical.com>
Date:   Mon, 28 Feb 2022 10:48:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] ASoC: dt-bindings: renesas,rz-ssi: Document RZ/V2L SoC
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>
Cc:     linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        alsa-devel@alsa-project.org
References: <20220227225633.28829-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227225633.28829-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/02/2022 23:56, Lad Prabhakar wrote:
> Document RZ/V2L SSI bindings. RZ/V2L SSI is identical to one found
> on the RZ/G2L SoC. No driver changes are required as generic compatible
> string "renesas,rz-ssi" will be used as a fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> DTSI changes have been posted as part of series [0].
> 
> [0] https://patchwork.kernel.org/project/linux-renesas-soc/
> patch/20220227203744.18355-10-prabhakar.mahadev-lad.rj@bp.renesas.com/
> ---
>  Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
