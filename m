Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6284A66407D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 13:30:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232968AbjAJMaX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 07:30:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232502AbjAJMaO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 07:30:14 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA40E11462
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 04:30:13 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id o75so11635035yba.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 04:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IkuSAVZKOMsJ1gBdMEqLNegz0l4XsEs9PuRldm+SHM8=;
        b=U09OCe5+MuYI8K/ycZrcs7CYd3trN9s+7ymZIPZ0kBsWgNeufoNdJlYaNMpvS89KDC
         gm3ZGksFLNVdTjYoQxW3pntyPPCywQaGSiiviTEz6sMN1vBeZUC2J55e0vRp8+tEQLWn
         7J9tstD1zFKR7m95JI+6sKmRdmt81tSyz4EVea8wE41cK2v3K04gGsEo8S5wkopCQupc
         vcAJTYeuN/hoZ9vYthwJdrESEuXOafq66E/tBFOUWkU9Qwp71NYucLSoCUWFAA3gO2qf
         yWORl4B/9OUjDbVkhgHiCqHiJ/TIFUHg/mp9zUik6oDEg4XTLmsreqPYAo7Wx+cdPLpU
         YCGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IkuSAVZKOMsJ1gBdMEqLNegz0l4XsEs9PuRldm+SHM8=;
        b=YXpWygeObgWFjlI38pLmKv34ciHNEgqUYULjqWAntgKKYxjQDh0FBJa3yfI/v5RGug
         Dqe3mTNZYRBP97rfEbiuN1Ig+16CBZDzDndOv/Gp/7suAZIkW3rXwkvVMCFWbNrOfXZO
         1ztqZQeteWnGbrgzn0ExU586pNTNz6DRuIuyVvc/3/XNhStFeEL8jwzAAH8PzhwqfbjW
         gwTe9DPPsFVPHcZ99k02/xGSJQ+j//pUeZXkXchu2e6NOWvAzfhDKP2TXOPOguKg1CNK
         ziClxY72pkO5/rUCyD5K2NrJWhof9RAjLz1OsBhbUZZNUUk7OULWKioBG/DpnKA2UXNt
         GCjw==
X-Gm-Message-State: AFqh2kpNM6iRAvFfNF3GEcDvh4N6L6exbx+ZHuxyRMziT1tjur/OTBmh
        GdgJ1cDNBqewapwGV0p+uc4RR1zCNUX5Jtf7ftoH3g==
X-Google-Smtp-Source: AMrXdXuazqX69BR7RE1uv30pTTanD5lHxZjQvOynOcbPo0qKA4l4TamAC0py24Ol3McuVecCEHZpbSDl/p9n8AwmalI=
X-Received: by 2002:a25:6982:0:b0:700:e0f1:6335 with SMTP id
 e124-20020a256982000000b00700e0f16335mr6074124ybc.520.1673353812884; Tue, 10
 Jan 2023 04:30:12 -0800 (PST)
MIME-Version: 1.0
References: <20230102230733.3506624-1-javierm@redhat.com>
In-Reply-To: <20230102230733.3506624-1-javierm@redhat.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Jan 2023 13:30:02 +0100
Message-ID: <CACRpkdadwiG=OMMHFUKYHyr1zRpeZzVR9pkmsBEBxqZzN2H53g@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add PinePhone Pro display support
To:     Javier Martinez Canillas <javierm@redhat.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robert Mader <robert.mader@posteo.de>,
        Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
        Neal Gompa <ngompa13@gmail.com>,
        dri-devel@lists.freedesktop.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Martijn Braam <martijn@brixit.nl>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
        Jagan Teki <jagan@amarulasolutions.com>,
        =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Thierry Reding <thierry.reding@gmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-arm-kernel@lists.infradead.org,
        Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 3, 2023 at 12:07 AM Javier Martinez Canillas
<javierm@redhat.com> wrote:

> This series adds support for the display present in the PinePhone Pro.
>
> Patch #1 adds a devicetree binding schema for panels based on the Himax
> HX8394 controller, such as the HSD060BHW4 720x1440 TFT LCD panel present
> in the PinePhone Pro. Patch #2 adds the panel driver for this controller
> and finally patch #3 adds an entry for the driver in MAINTAINERS file.
>
> This version doesn't include the DTS changes, since Ondrej mentioned that
> there are still things to sort out before enabling it. The DTS bits will
> be proposed as a follow-up patch series.
>
> This allows for example the Fedora distro to support the PinePhone Pro with
> a DTB provided by the firmware.
>
> This is a v5 of the patch-set that addresses issues pointed out in v4:

I looked over the patches a last time. This driver looks great.
Acks by Krzysztof and Sam are in place.
Patches applied to drm-misc-next!

Yours,
Linus Walleij
