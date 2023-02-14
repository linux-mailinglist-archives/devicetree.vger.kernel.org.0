Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0648669635D
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 13:19:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231447AbjBNMTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 07:19:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231814AbjBNMTj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 07:19:39 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5FFC2659C
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 04:19:15 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id z3so3829816pfw.7
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 04:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VitTC1VuJJTYQdu/YxVhewyoRuLfVR95SI/0DF3Rtkk=;
        b=zSMZ0SAQRHkrq2J59pKTUyRm/EgW7A96+q56OMg53CqV3DKUCQ2nM3YFYiMUKNDg/G
         a7cpwNCer1XRfIyJaxmIoRTahJxemkW8/e01lZSNkFQV2GaVuVb7N4fLQB+9EqJ+w6sx
         BiCqjflfoFNsTEM6tWqPKH08sHvXNSXsG/okCOA3UqLEPiuOz02PV8vV9wWn031UD1wA
         xlDynBpHDfnlDtJa+fYX2nYUjJ/mZJ4gKkLMyhLvJVOeg4lDrw9c+bEpVPMXEUhkCnpG
         5i9TmK8v1b/Iukd+OYCzdwLr0J+C2S+NDflvEALPWV2k/06+4Gf5g8rHJNA9tsUQOdwk
         rvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VitTC1VuJJTYQdu/YxVhewyoRuLfVR95SI/0DF3Rtkk=;
        b=EaMd5qrmF1xg47KwNIJSMfUDOw811riVMMhk2xMlhk37n4ZOXAfcK8cc1+ITUR7nF3
         oGFOqC7pKb8MyuZkCj0XyIYS5xMb34f6253KqMrOTHJl0P4zW+PnzyJ7ltzBRmM3dujF
         weg5Oelzc6ihlzSSxe1nrzzZvntS4dqz8jH2PPZ06k0kTEfGZdGaqixOw/tyvpsGx1zg
         zFM92Sd0r5cMAmYyQvUkQ73Yp9HsUh4M4Wa8MeBzQZOYg2jBH0PVTSIwXshJhQIFBlp1
         8CX57X0SztoLUvGgQXOUJ1qwgWZivtPncdRriLp+nWO43Jf+u8hG6TjR6fsOy2HD/2Tb
         QvRA==
X-Gm-Message-State: AO0yUKWAnEsVIWXiMdTEOtScDj34G86iUknBPPy92dhGhx3cKknOQ3Iy
        KHXViAcIP7tZZpqG2KEC4pEBsTQPtY4JTBI0dk2hig==
X-Google-Smtp-Source: AK7set8JIgqTFRd+MPjZCDMEsWGRo7JvDEgDNe76d7sr74vRhR4GnDIpaRE1zD+ANtND83e7m5npa+uI9v2YUR+e89o=
X-Received: by 2002:a63:7b5a:0:b0:4fb:949d:72 with SMTP id k26-20020a637b5a000000b004fb949d0072mr312698pgn.8.1676377155136;
 Tue, 14 Feb 2023 04:19:15 -0800 (PST)
MIME-Version: 1.0
References: <20230213152740.359055-1-lucas.tanure@collabora.com>
In-Reply-To: <20230213152740.359055-1-lucas.tanure@collabora.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 14 Feb 2023 13:18:38 +0100
Message-ID: <CAPDyKFoQ5Eucevs7H4c8CfH_2yFF5Xp0sCPq7QOY066GB6_nig@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: rockchip-dw-mshc: Add RK3588
 compatible string
To:     Lucas Tanure <lucas.tanure@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Feb 2023 at 16:27, Lucas Tanure <lucas.tanure@collabora.com> wrote:
>
> Add RK3588 compatible string for SD interface.
>
> Co-developed-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 67d7223f74da..211cd0b0bc5f 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -39,6 +39,7 @@ properties:
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
>                - rockchip,rk3568-dw-mshc
> +              - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
> --
> 2.39.1
>
