Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EFBD5A16CF
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 18:41:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbiHYQk6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 12:40:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233141AbiHYQk6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 12:40:58 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 407DBB99D8
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 09:40:55 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id s36-20020a17090a69a700b001faad0a7a34so5503747pjj.4
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 09:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc;
        bh=LDr/sJt39r59Eo+e73KguU3ty95m0EiQpUCtWbdHjmA=;
        b=8H3dvlqkg8SU0/OkxYfNKolK0VF2T7mLeOEHCxx6rmCAg/5HtUDbEK8/iMstXUYpRq
         1vHJODxz5kZW7WZQHbmPVuXKke2yfBTfMMZgRW95C1GHjfEiU+Po4JNnRb9iy8NLE/sA
         4Yf3eoCsWrxwQQT6mmaPyRosEv1sCICKuVk1go1Yg+KT5xxAQxJIB0OpqBVdYkUNy47s
         74pS2IP9e2xaH0fBKYuTowJ01OZ5kNoSriunu+LRZLLJzzns3n8NctDKj0WnDTa3Rk6+
         pcWLE8ilUaxBd4yvsQBlj/Lu9L5pF7JokNDH0I2Dwze2eZqHUYbDM31GpDXUZl+qeS5I
         Uzfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc;
        bh=LDr/sJt39r59Eo+e73KguU3ty95m0EiQpUCtWbdHjmA=;
        b=wMun1e2Vykq24aQuwyX/fpn2cdeoWUCEAQHAacyjzW74QNixMaxIE/vWiBp6poy0BD
         sLRYWlNNmLAHBIQ4Mzp7Xpg0GXcM/yScOWYz2CxYR19FknMoPALHf21V1x6jDT8Tki7x
         PXzzZckd6Y7YtewS4UCDmwcvD20albMLQwFwqdL5L72pcgqL9zCvdunFJS/v2oAsovwU
         lBO/e0BmGhT+FvIyRj6FSxriZIcBReDzthsWItc8IF7UP0+brorWZWB+Ol9CtYsKPnHK
         VAjZbva5pdXdLKkmjVENntdVr7nJsBb7db+2yDVfYfU8Spob3gDgBUYX7HRW2cm/Wn5p
         vjdQ==
X-Gm-Message-State: ACgBeo0mfXl9mmvf6eknhl6D4jOFv3g/dLyZEegFe1Bjwo/Xrn19h68z
        UAAQo2xNAoQNzOrfUubjLp7qSQ==
X-Google-Smtp-Source: AA6agR6Zl3jv0CpD891d5be2m1yD6+A31QDkeEMLmLCb5bkHhoecqXaZMJEQvAt9eyJEogL7KxddtA==
X-Received: by 2002:a17:902:f70d:b0:16c:50a2:78d1 with SMTP id h13-20020a170902f70d00b0016c50a278d1mr4451004plo.34.1661445654721;
        Thu, 25 Aug 2022 09:40:54 -0700 (PDT)
Received: from localhost ([76.146.1.42])
        by smtp.gmail.com with ESMTPSA id iw3-20020a170903044300b00172709064besm14801735plb.46.2022.08.25.09.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 09:40:54 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Huqiang Qin <huqiang.qin@amlogic.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        Huqiang Qin <huqiang.qin@amlogic.com>
Subject: Re: [PATCH] dts: meson: Add the included meson-s4-gpio.h in the
 meson-s4.dtsi
In-Reply-To: <20220825084000.3402908-1-huqiang.qin@amlogic.com>
References: <20220825084000.3402908-1-huqiang.qin@amlogic.com>
Date:   Thu, 25 Aug 2022 09:40:53 -0700
Message-ID: <7htu60i8dm.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Huqiang,

Huqiang Qin <huqiang.qin@amlogic.com> writes:

> When the meson-s4-gpio.h is missing, the properties in the node cannot
> refer to the gpio number
>
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>

Thanks for your patch.

Could you please resend this inluding the Amlogic list:
linux-amlogic@lists.infradead.org

Thanks,

Kevin
