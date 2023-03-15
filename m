Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A0AA6BABDE
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 10:14:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232064AbjCOJOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 05:14:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231481AbjCOJOV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 05:14:21 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D65F67C943
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 02:13:52 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id m18-20020a05600c3b1200b003ed2a3d635eso662238wms.4
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 02:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678871630;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wZm7ql20rMJKCtfDir4y8dhV/8MRg5f2HHVArWMyHE=;
        b=msgjES3Ds6zTYgNAad7SZAc3slkU+646dKpyVPzCi3BOyNQHL52Pjy58omFPaDKLzN
         f7o4QmohTE3c2vrtJhMrBe83tKMgFJg9A2/Xop1/Q3XVNhzE6/uJHe/hzO5ikj642L43
         62Rr5V5er+wTb70rsQAPTAwntaPEAMr96sUcXY13Qb3vJ3ojQlNGU0Madlu+OVhuyQmZ
         lBnQlp61UOV8R70SmKJzPKOqiuXGIxowAjx1VpAA/FPXA8G0X16pbEut/E63MdU2LXWx
         Mz0pM2njpHAQP2IMA2EPAAd5ACdak4gEBObotJe4UnEPAHbkjiYmItPcNF+ZTW722gjK
         nUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678871630;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0wZm7ql20rMJKCtfDir4y8dhV/8MRg5f2HHVArWMyHE=;
        b=Xf4mHtuHVjtiIvSVhEqVBGaiCJ1xcxrGoWGvmLCbZ0+aTVyH8SSkeqKbGQB57MJDRl
         3D8XjWLpmFOBJxKFM72vu5/yzN44dfqzu1+Gw0XXEtD+G10Ur2oxGS834hkititZSbdS
         FUSOYi2tgY5UDRJFc8djZgSfzv4Lpl/hhMAN+ZZGL065ZzMwkW+WveDr3EU4xTw7jdJx
         X1bCqjMQdnt4i1tOf/jaZxOdIGkZOW7bYwmu+ysbAE4S+fX8bxgX+UbZymrG5XgGyGXn
         RCysDQ0JAyEklJzRba82bPbw9HhRXjQl4Sn4ORTe9eYs1BPOdE6p7d1xEKgLjwwiiRHB
         bScQ==
X-Gm-Message-State: AO0yUKWvjImIUdel+7CAzPzI3uJbc068A5RX5sxwSGbtYfu0tIkYi+co
        YgIDyNbXZgImZLtaVSukvXqKHw==
X-Google-Smtp-Source: AK7set9WvwBXpYyvhdXU6tW5hUtBLFeDNVy92t8NWESSmxzsb3T0IUxy2e0vq8po0ilcv1sJ1Ed4VQ==
X-Received: by 2002:a05:600c:35cd:b0:3ed:1ea4:e5bb with SMTP id r13-20020a05600c35cd00b003ed1ea4e5bbmr12580184wmq.32.1678871630268;
        Wed, 15 Mar 2023 02:13:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y16-20020a05600c365000b003ed23845666sm1136212wmq.45.2023.03.15.02.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 02:13:49 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Fabio Estevam <festevam@denx.de>
Cc:     sam@ravnborg.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, CPHEALY@gmail.com
In-Reply-To: <20230314111724.1520178-1-festevam@denx.de>
References: <20230314111724.1520178-1-festevam@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: seiko,43wvf1g: Add the
 'enable-gpios' property
Message-Id: <167887162959.2174720.18189027719777152587.b4-ty@linaro.org>
Date:   Wed, 15 Mar 2023 10:13:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 14 Mar 2023 08:17:23 -0300, Fabio Estevam wrote:
> Add an optional 'enable-gpios' property that can be used to turn on/off
> the display.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next-fixes)

[1/2] dt-bindings: display: seiko,43wvf1g: Add the 'enable-gpios' property
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=1afdbd475adc609d829e560389d33eb90501660f
[2/2] drm/panel: seiko-43wvf1g: Add the 'enable-gpios' property
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e2945e6c5111726536c6046eaa1b840636e066a8

-- 
Neil

