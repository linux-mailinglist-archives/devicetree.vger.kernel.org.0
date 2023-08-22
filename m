Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8D7A784858
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 19:22:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229825AbjHVRWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 13:22:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjHVRWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 13:22:18 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8D3F32784
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 10:22:15 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d63c0a6568fso4807457276.0
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 10:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692724935; x=1693329735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Que2yIbRJrk/qAKPnu985gDCHaDuWM2c+IiMxTSOqFo=;
        b=iXf3z4PpDI16KmgLfqdzWF1xg8whrVf+mqjrNLmygLnJwi6YuRYvpVxzRrTBVuMIOf
         2/JRDNjZ/5hLV11p2A0Xj3oF2S6V3V+qZJikfyG9JhBiMNdm4jVM1YP56QbgTfx0n/XB
         a/O93HWoxixX6hzNKB10ghZU/McnvWF265/Qlj+RUTngsouCFk/e+5lzMxJSybtObVbJ
         lxFhbWg2R8ZwJ//d8PhmAi1b/vTGdF1C3jZV95AaAxg+UsgTepvW/tKR/KJIeMryJ+hS
         8dMhoo59ZNIEELkBnhkS5jO1vtzhmEDEbXDxygTCGKf1fX4qPJZnZM/fHf9Hs4GMexEW
         Dvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692724935; x=1693329735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Que2yIbRJrk/qAKPnu985gDCHaDuWM2c+IiMxTSOqFo=;
        b=h18W42meogyc+lkc75H4OloAul9N4Z1pmxZCBqftKitlTB+00enu4SoTi1Zq8PtM5M
         xGvcekKW66LM91+wLImQ9xWoNiGye++YaLpdq5kQkDqv3rIbc6k1S8EslWeag8hKtwQ9
         8drISUmq4jtuuYKXUgdiXumr+kzhK8iVvrHBZZyev9y5vFRKR8g0EaE/IMe1TJvQS7vo
         idyx825MVkHivt6DNkp/hzHELWyNIeuBMi36DiT+xzNqDHcEEP/Rq9Ln/rzSFUeOh+Rj
         9ZmnRVId+G+6wHJgum2kad6fW53gGPyQa+NQu05g1065YfH+6hQ8bsuV2CQ7JSY3HejL
         RHgg==
X-Gm-Message-State: AOJu0YxJN6f+1EtvvGs4wnpoy+4XTpRAKCWTF3gAYmpwg0XeRLXeX8Fb
        txNOTVSj1PD3+u5QKSATvuWy0xrosbDN4FW5R77ddw==
X-Google-Smtp-Source: AGHT+IGl3KL+2s+dmYMMSJu5+XMxTurRENZU4VmX6zHmymyLIA+9IDxMCbHBbSaAqr/Q/s2izbtmiLqSIM5T8l0q6DI=
X-Received: by 2002:a25:f606:0:b0:c6f:b843:c502 with SMTP id
 t6-20020a25f606000000b00c6fb843c502mr11502039ybd.25.1692724934702; Tue, 22
 Aug 2023 10:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230808083243.3113192-1-Sandor.yu@nxp.com> <20230808083243.3113192-3-Sandor.yu@nxp.com>
 <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org> <ZOS+IQgFZYxN503B@matsya>
In-Reply-To: <ZOS+IQgFZYxN503B@matsya>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 22 Aug 2023 20:22:03 +0300
Message-ID: <CAA8EJpokkjw_Q36YMh4p6NR+r4JGgM7_b+_QXtbmcPr6GzA=ug@mail.gmail.com>
Subject: Re: [PATCH v8 2/7] phy: Add HDMI configuration options
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, festevam@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, kernel@pengutronix.de,
        linux-imx@nxp.com, oliver.brown@nxp.com,
        alexander.stein@ew.tq-group.com, sam@ravnborg.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2023 16:54, Vinod Koul wrote:
> On 17-08-23, 13:05, Dmitry Baryshkov wrote:
>> On 08/08/2023 11:32, Sandor Yu wrote:
>>> Allow HDMI PHYs to be configured through the generic
>>> functions through a custom structure added to the generic union.
>>>
>>> The parameters added here are based on HDMI PHY
>>> implementation practices.  The current set of parameters
>>> should cover the potential users.
>>>
>>> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
>>> ---
>>>    include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
>>>    include/linux/phy/phy.h      |  7 ++++++-
>>>    2 files changed, 30 insertions(+), 1 deletion(-)
>>>    create mode 100644 include/linux/phy/phy-hdmi.h
>>
>> I think this looks good now, thank you!
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Should this go thru drm or phy...?

I'd say, PHY, together with the other PHY patches. If you can merge
them into an immutable branch, then it can also be merged into
drm-misc (?) to provide the dependency between drm and phy parts.


--
With best wishes
Dmitry
