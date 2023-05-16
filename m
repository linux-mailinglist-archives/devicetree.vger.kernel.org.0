Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74A9D7047B5
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:25:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231400AbjEPIZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:25:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231250AbjEPIZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:25:28 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91CEE469F
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:25:27 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-306dbad5182so9080752f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684225526; x=1686817526;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YkoC9PWg6cuW4/FTvhH4rS17FDcsNm6YxnUGyMEtO/I=;
        b=mjc22NADDnU82m4BCgR/wakiErAwRFijpq34JIbDwu9Ui6f9Jdcm4Se48Cyxdmq/ZA
         SofbQO072leZee+CYxa9Xi8Ik22H69Ul0b9QccSMe6K7jOm6Qr0BeumwXWuaGueWL9Ck
         SudHxHAqP2GyE2IUG/l4XE2QIom0lRPmbUi6csy4PG04YujZz1GC24l/d4yRIEqWd7MK
         jwArey/PdEyuiNNJ25meDrPo0AMziynFeutSEPyPQkrtxPfei4uOe9gBQc+XDdR8jz4R
         sA7eK//UtSkgvHpKrdnqfp8fdpmaI9T9uIV/UU2foAQiUczv7KMdKLlm1/Wr436l5ycZ
         AunQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684225526; x=1686817526;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YkoC9PWg6cuW4/FTvhH4rS17FDcsNm6YxnUGyMEtO/I=;
        b=hAmBv18A25KG0FwI2TsXpbpo5Kbmank2tj2Pt81Cs3TNiVuEkyoPPCzhUWErcWxr3u
         LK4gvY3UuYrhqQ/mk8aiVaVkMnpuQ/5IX17JMDqZyeN1mOH2oMn7PwazFO8uW4sK/Wqn
         TgdZsW3IDtpeyLDBrCVxckU5PGS8gF17zU+t7h/36/Z7gjLbYtfWyrxJPrzzobNSEeCM
         cVoloFbiRxzRip6GjDejshxUgoCIx7UUHufCmEZA7SOOMOaJ46hp7MGmSnEDO0IVPjTi
         bEPFAR9NLVgapTin8u3Cm9ik+GbzMEp5ekfNzqYR7x37UuwcvD926NsliKHWO8kX14K5
         xkzA==
X-Gm-Message-State: AC+VfDyGXj8VzIKYZ/S1XsEmM2iMNr9jhJGVNAImFxPdhVZ9ySzOvDkG
        m69pAoUKQhsrr+wRvv23MCgD4DPV2EDt+hIBJiGxTQ==
X-Google-Smtp-Source: ACHHUZ4Nwg/N5n1W1+t0K64odwxGPC6JRyHFjovDz+8QaHC/WHuXyJ4UY+Hx2Ys4CZ9FZSQVWZgggw==
X-Received: by 2002:a5d:6841:0:b0:307:8d93:a47f with SMTP id o1-20020a5d6841000000b003078d93a47fmr23944609wrw.55.1684225526036;
        Tue, 16 May 2023 01:25:26 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r14-20020a5d494e000000b003063a92bbf5sm1727505wrs.70.2023.05.16.01.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 01:25:25 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Cc:     Andrey Gusakov <andrey.gusakov@cogentembedded.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <rfoss@kernel.org>, dri-devel@lists.freedesktop.org
In-Reply-To: <20230515162033.66986-1-marex@denx.de>
References: <20230515162033.66986-1-marex@denx.de>
Subject: Re: [PATCH] dt-bindings: display: bridge: tc358867: Document
 TC358867/TC9595 compatible
Message-Id: <168422552521.63953.9545904244070091702.b4-ty@linaro.org>
Date:   Tue, 16 May 2023 10:25:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 15 May 2023 18:20:33 +0200, Marek Vasut wrote:
> The TC358867/TC9595 devices are compatible with the predecessor TC358767.
> Document compatible strings for the new devices, so they can be discerned
> in board DTs. Update the title to match description in the process.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/1] dt-bindings: display: bridge: tc358867: Document TC358867/TC9595 compatible
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=adbcfcc92b5aaffdee4c5e62c077919014c483d9

-- 
Neil

