Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E26B776E33D
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 10:36:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234122AbjHCIgP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 04:36:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234440AbjHCIfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 04:35:43 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE5533C2D
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 01:33:57 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b9bf52cd08so9599681fa.2
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 01:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691051636; x=1691656436;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gFP0+9DO5z5eu/GI4qWQeUSbbmrVEwQLwngQCeQzKbw=;
        b=JbBAxN9twm3cw2GFSTiV+lgQgX5phCEfsDHRoTr7bx2T7W6mhmPYGSPitdzwE72MEr
         3ozHXFo/INF9JXY5/mlSoGc4Q/vp9CPDshOqEbM6OQXDV2oLuC3DBxNp19XDC0naelPS
         ozOZ4dGO40jtttdwpxp9hjwNpeoiFzQw/WbAICk2kJsZwPvRoIXblp0ptAkLSV2XJfkl
         PP8ulqepnuOOKDbEJE1N+uzmJQEW68wjBdc2Tiki2j+UfL5umGlwungUdOBHDPbvt/di
         E7pk6rCuz3ZXHcQzsip62IKe4P1e9AWSsXLynIOBHfThf/r3BeZBy4xiHT4QzYTs68Pe
         FWAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691051636; x=1691656436;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gFP0+9DO5z5eu/GI4qWQeUSbbmrVEwQLwngQCeQzKbw=;
        b=EcR02pXWuPvnN5fnvHlnWSIsZ6Ziwm03pznCxzFWv+RduHGnWbV0s/Ug/jm4bS/zT0
         nUM+h4DbBhx4u7lE+SekVIjv2WaZQilC169MWirInN45M82Jb/IKC2Ce2NwrDHkdZcCK
         ymD/3+A+rHjwhkw+7QXI6WvfZkPwuuE1xACup4xwSoB09rS0/FrJGultqJiK+tfKNjwu
         qK2idmMFLInp28kxxacoSA/Lmuuq1J2qek+GWVfX6azj5LWyOPLfmahgnPl80etdMnxr
         DUWxUPz3XBjspg3JpHODzMqkOTAuQyS9bR+AO7R5eVi6FbIX6xGlpWZPAzIMQHr+MZVZ
         RKxA==
X-Gm-Message-State: ABy/qLb1jw7vKy9v+nB+XbsbsLZmRwXoiTmROBhzSxxPJzJbLEENoDkg
        d3Z9GBMT7SHx8ZiSW9szfonMQA==
X-Google-Smtp-Source: APBJJlGjSyyIqyXsDMy03t3tVsKEALJAlFC26v4EPKUXPzG0xUEAapzOrpSN5bm4mjqUwHBFT154+g==
X-Received: by 2002:a2e:6e15:0:b0:2b4:6d59:7863 with SMTP id j21-20020a2e6e15000000b002b46d597863mr7020477ljc.25.1691051636071;
        Thu, 03 Aug 2023 01:33:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j10-20020a5d604a000000b0031758e7ba6dsm21175448wrt.40.2023.08.03.01.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 01:33:55 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20230718084411.1189831-1-alexander.stein@ew.tq-group.com>
References: <20230718084411.1189831-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH 1/1] dt-bindings: display: bridge: tc358867: Add
 interrupt property
Message-Id: <169105163516.2532485.17482210489199279281.b4-ty@linaro.org>
Date:   Thu, 03 Aug 2023 10:33:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 18 Jul 2023 10:44:11 +0200, Alexander Stein wrote:
> This bridge has an interrupt line for event signaling. Add the
> corresponding property.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/1] dt-bindings: display: bridge: tc358867: Add interrupt property
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=078b39c9e4ba849947ded1c887bd55afdea98d65

-- 
Neil

