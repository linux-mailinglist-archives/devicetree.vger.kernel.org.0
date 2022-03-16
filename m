Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC1F84DB4B8
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 16:19:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357181AbiCPPU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 11:20:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349067AbiCPPU0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 11:20:26 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 995855714B
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 08:19:11 -0700 (PDT)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BCDF73F499
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 15:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647443949;
        bh=n1R86AH40JMDGlhsJXdbdtccHR5xtuigPuTWuYsB7aU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=UJuuWIeYpKlkSRWZdfyhkgTgFFjXz3peZ0FKAA7w4xF0tqNVoiEyMVZHYhMxp9p9u
         3XSNNtSRpnmda9d8Oy1SFzSZO0t975j2d/eoBKsSDCk/E+aDMJP95XSxed3SRw7HdA
         tz6VHZWOwK9/Lnq8jjUIzQYZq3lwWF/HYmP23+fvIPHs6+C7yFWk12VqtgA5DpED+a
         Cz7F7XLfdYOfFGE52p50wQV99adWZ+ztQnuFhZBdB6iZDunnCS9gPL336rXXdFGKhb
         vYT70Ylhp20XZWFwTGUZ+e2DkodqT70am2un482Kxo8zrs3moj+38RRZygFhxGmJWj
         VIJh6aPB0PaCA==
Received: by mail-wr1-f71.google.com with SMTP id d17-20020adfc3d1000000b00203e2ff73a6so459335wrg.8
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 08:19:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n1R86AH40JMDGlhsJXdbdtccHR5xtuigPuTWuYsB7aU=;
        b=1zc0zl6aBADrFyfN9gO1R3CdMxGvh6TKfTh0F6zC74+UFYPHwzfQByxXaD9Abr/eBu
         qCh9f0P56DtpyCSJGpPz87LfTTBLlJCSsgAh9N2NuLBx2AfDkVicPviWU1IkL2gwoobc
         7TrXVLZ/c9tdK+MWaq8HDYyE42ZT3LQazc5wVs+CrjuPPegN/o5zsfG9t5+d9NP+oqBH
         3w5EAh4DY/rHGDLZ6p0g6njnPFv7HjpHzwxx/puYZ3fZY74RmRRIe0lKoM6n0QGeYXrw
         SFuxa1XtNLw30yaRPtFui1wL1wkUFwAdER+ORF7+9gEcNwKrWVR4hrNALREZyVW9Qlk2
         9KTw==
X-Gm-Message-State: AOAM532aRsJnu5zaMWf/P4aaYmdDuVWq8ZpjbxdYnUeMmyVRsG2xjMS4
        4+J8YBnug2eIBzijPAugQFyLzz8gGcuUY4MiI6zNRj6BYotE2R4QWActUai/oZLXQTxji/U8E6Y
        /rqwzbRIjlfZRozJVDzkNTI0RP4uAWB6FoItHfsg=
X-Received: by 2002:adf:fe81:0:b0:1f0:246e:ae5 with SMTP id l1-20020adffe81000000b001f0246e0ae5mr353636wrr.652.1647443949234;
        Wed, 16 Mar 2022 08:19:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7KtAfQn8O30h7vKxDeRV7uri401Yg0lHLAU4i8wtnkZBBAptCPe0PeY+wSBS+LC5ypMwvEw==
X-Received: by 2002:adf:fe81:0:b0:1f0:246e:ae5 with SMTP id l1-20020adffe81000000b001f0246e0ae5mr353605wrr.652.1647443948978;
        Wed, 16 Mar 2022 08:19:08 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id v10-20020a056000144a00b00203df06cf9bsm1821028wrx.106.2022.03.16.08.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 08:18:41 -0700 (PDT)
Message-ID: <cf765199-30c3-f963-4d9b-8f225efd5b32@canonical.com>
Date:   Wed, 16 Mar 2022 16:18:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V8 1/5] dt-bindings: display: mediatek: add aal binding
 for MT8183
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, chunkuang.hu@kernel.org,
        matthias.bgg@gmail.com, robh+dt@kernel.org
Cc:     p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
        jassisinghbrar@gmail.com, fparent@baylibre.com,
        yongqiang.niu@mediatek.com, hsinyi@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220316115155.17834-1-rex-bc.chen@mediatek.com>
 <20220316115155.17834-2-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220316115155.17834-2-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2022 12:51, Rex-BC Chen wrote:
> Add aal binding for MT8183.
> 
> Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,aal.yaml    | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> index 61f0ed1e388f..eb0299b80522 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> @@ -22,7 +22,9 @@ properties:
>    compatible:
>      oneOf:
>        - items:
> -          - const: mediatek,mt8173-disp-aal
> +          - enum:
> +              - mediatek,mt8173-disp-aal
> +              - mediatek,mt8183-disp-aal

This should not be under items. You have just one element here, so
directly "enum" under oneOf.


Best regards,
Krzysztof
