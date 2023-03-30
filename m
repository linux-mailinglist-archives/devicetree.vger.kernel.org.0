Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDBD56CFCDE
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbjC3Hf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjC3Hf0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:35:26 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FD62E3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:35:25 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id e18so18049113wra.9
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680161723;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wUsyas2g7pXcAt6kmQAIPXQR1m5yxNLHw2NuTLXyTvA=;
        b=kj4dR7j8wi9fDhWyKWSUz+RC1XBKZvSgaMCcAQ+KOse0mSvFQKB8sp7NeUTSFwhnik
         fZW4TBqEnfVlKiZXDb/bJKiFRYlTYwXRV2otd/oS+0jbbGTHjPDHByOlrtpYMpUuaDoU
         PU29VgNQ/OVsmS8Dqfm2BYnlSb89gkR0lGLZrnOQCIncKup/tSA4As/0Mx08PmAIR05v
         AM6oqzKRJYpN7IATxmoxY8ESZ/iKYNB/mtF/0s3kjuCq4Pn7Gz0KF+HKqGq3fbBg+jHy
         ShqN/lQ/3qTRCwRPW2HrGJQR46lL7a+Vqs8jiFqTfHmhMaDRQ7H4X0YS+o/06179jX6A
         OHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680161723;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wUsyas2g7pXcAt6kmQAIPXQR1m5yxNLHw2NuTLXyTvA=;
        b=Ooqjn4pWU/DJUVA3ejdeCh1bjoC0UX9aQMuQVw0WSpzirBAX0ePx0aVfc8QJuc1vV3
         n4jzBbW455wYdMmlUI+YO5awn97IwGGnQNXXpZEubeUexzF/QlHI4iqRHz9cCyNEIUNU
         Vq5OGvagxwIcz8dplzoGkcnASe3HOgrN45xJ7n35yOaZkl3LOsVDLawOFKadEi8+wYSD
         2zvtfNpILdUsSZ9ViKBeSL22grbO6+jDXuC0+xyrqFo0tgag2HXjC6ve3jz9TJRKyqOK
         A+z4KPiszS9cxtKZrrb7JixyevGo/rrVKW+kpPnRckQNtHq4TiiCYf+GbRmCAmjaIMxV
         qCrQ==
X-Gm-Message-State: AAQBX9fD3C7jRqSDnOjRA27jwC4nl9ZImc1mp1gKqPAZ8+b2ILAmmLd6
        CCCll6cl+t/CzlZmCob1kjU4rODf8pTQ76+ALC7L5Q==
X-Google-Smtp-Source: AKy350Zhek0IM8+FPIzpitnwEAtcdRvQCBSMF25dquE+PRBVL/WxyWP8+w3v36GzzaPpUoEPJaeODg==
X-Received: by 2002:adf:ea49:0:b0:2ce:82f8:812d with SMTP id j9-20020adfea49000000b002ce82f8812dmr16663518wrn.54.1680161723155;
        Thu, 30 Mar 2023 00:35:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id v13-20020a5d6b0d000000b002daf0b52598sm18885206wrw.18.2023.03.30.00.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 00:35:22 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     krzysztof.kozlowski+dt@linaro.org, marcofrk@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
In-Reply-To: <20230329201150.741106-1-festevam@gmail.com>
References: <20230329201150.741106-1-festevam@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: seiko,43wvf1g: Change the
 maintainer's contact
Message-Id: <168016172250.3866055.13177104315800219942.b4-ty@linaro.org>
Date:   Thu, 30 Mar 2023 09:35:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 29 Mar 2023 17:11:50 -0300, Fabio Estevam wrote:
> Marco's NXP email is no longer valid.
> 
> Marco told me offline that he has no interest to be listed as the
> maintainer contact for this binding, so add my contact.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/1] dt-bindings: display: seiko,43wvf1g: Change the maintainer's contact
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=b2d2d8decc8d239875420af6e412158ac5a2cb1f

-- 
Neil

