Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F27D776E505
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 11:53:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234940AbjHCJxk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 05:53:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234873AbjHCJxj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 05:53:39 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A55522D73
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 02:53:37 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fb4146e8deso8135275e9.0
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 02:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691056416; x=1691661216;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o/B0ToLExP+DiR9D97raY/1J2KSwUj5aVQTHcLopPW4=;
        b=hnii72+lRfd3fIj8r+WNkTKXqcHLxpE84fpR4zovZr6d4FRi/cSQ8Df191YVGBlsiC
         IPFvADsBsCMlNrZJpT+HaTU6fxodvjHbwmFhyc/GefTUYpyhqMwD6dfR9zehmjFhwrmw
         msdRDz9+zNRfViEUhW0t8UmAfACzDQ506jBsy7sNzGDXVMXQKpxQ5+AdQ2vDOvMnavNh
         Hjfoe/NerLWkfc4mvnQCJTDqil9W4pPKxArj8d+xZfnhMotyOtFHcJICur+WCDMpuvi9
         i5TI2AB2rTgc0HsXoYOABVfqAd4JlCS6zbRPUuVrdVHBC2/06xza3GFHWBz36B4uSC1B
         lzZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691056416; x=1691661216;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o/B0ToLExP+DiR9D97raY/1J2KSwUj5aVQTHcLopPW4=;
        b=JdDvYoqkTN88ZcOYik5+/2RLDU6iJAbdfIGRiFgCpZuD3J42sb7DlcrCFEIxcm7+Tn
         TJf+jZA3aWLtvo/1KLq+AIycbd9bqVUFNdvd2gL4ahsBi7vdIoPYIcFKXarqXc7qGJPP
         vCih9eoukqnFDwiofIRtKw58VpMA/PtQc/Kj/OxzQWaXBOvpaig9EIEwt2VufAs8tlsZ
         xnAAAddEuEfm2JwD2JAst0TyBUFK0wtiFDLjgaXCTD9zUKsyIVdyZ5nngkv6nRclQ6aV
         Sur4oOzP7b8XCMOm4vMsB0C8RCP8A1H6Y0D/4qmP1ukaBBfU+KWKobw5QFH6cF3bVbFE
         84sg==
X-Gm-Message-State: ABy/qLYWzkl3hV6z7vXCARl/KOoUeKeMUJLTPQvRAralQAYLhUPNE22+
        bERC72rKhilaK+qm743tEA52GQ==
X-Google-Smtp-Source: APBJJlEypDBS9JVFp+B8z1U3CVh5JzhVEqfWbu5Fxsi6niCNxUT0RBG20ys8Q2wWkY0Xe2Z09A8w2A==
X-Received: by 2002:a1c:7c0e:0:b0:3fe:2b69:fc6c with SMTP id x14-20020a1c7c0e000000b003fe2b69fc6cmr5373711wmc.39.1691056416186;
        Thu, 03 Aug 2023 02:53:36 -0700 (PDT)
Received: from localhost ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id t12-20020a7bc3cc000000b003fbc30825fbsm3800361wmj.39.2023.08.03.02.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 02:53:35 -0700 (PDT)
Date:   Thu, 3 Aug 2023 11:53:35 +0200
From:   Julien Stephan <jstephan@baylibre.com>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Phi-bang Nguyen <pnguyen@baylibre.com>,
        Florian Sylvestre <fsylvestre@baylibre.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Alexander Gordeev <agordeev@linux.ibm.com>,
        Andy Hsieh <andy.hsieh@mediatek.com>,
        Conor Dooley <conor+dt@kernel.org>,
        daoyuan huang <daoyuan.huang@mediatek.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
        Louis Kuo <louis.kuo@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Moudy Ho <moudy.ho@mediatek.com>,
        Ping-Hsun Wu <ping-hsun.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vasily Gorbik <gor@linux.ibm.com>
Subject: Re: [PATCH v2 4/4] media: platform: mediatek: isp_30: add mediatek
 ISP3.0 camsv
Message-ID: <iq7jffjeaejdfb26a4ysjgjzuopov4ji2ecgzmv4563tdveaep@hh2gzgzkbdzj>
References: <20230630100321.1951138-1-jstephan@baylibre.com>
 <20230630100321.1951138-5-jstephan@baylibre.com>
 <0430ddab-6a6c-9fa3-95bd-05ce8ac5b94f@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0430ddab-6a6c-9fa3-95bd-05ce8ac5b94f@collabora.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 03, 2023 at 02:21:17PM +0200, AngeloGioacchino Del Regno wrote:
..snip..
> > +
> > +	mtk_cam_init_cfg(&cam->subdev, NULL);
>
> mtk_cam_init_cfg() returns an integer, and this is probably because you expect
> it to get logic to fail: in that case, check the result of that call here,
> otherwise, make that function void.
>

Hi Angelo,

mtk_cam_init_cfg returns an int because it should match v4l2_subdev_pad_ops->init_cfg prototype..

mtk_cam_init does not fail, always return 0, so I though it would be ok
to discard the return value here. What do you think?

> > +

..snip..

> > +	unsigned int bpp;
>
> Can we get any format that uses a billion bits per pixel? :-P
>
> u8 bpp;
>

I am preparing the driver for futur upgrades.. in a billion years ;)

Cheers
Julien
