Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD1EA70EF5C
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 09:28:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239761AbjEXH2c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 03:28:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239845AbjEXH2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 03:28:30 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBBE4E6
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 00:28:28 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-64d2981e3abso436404b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 00:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1684913308; x=1687505308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0swQO8uc/orJERk9QNDSqEvMqkKwss9myYPJSpA3F+U=;
        b=hwp6So7H0IBpB9UdEUqWBOOeX0fbHbYieg9GYt3wSudvtPV9/bzQUEDc8enUTpPquG
         S/fnq7fdQfUCnd3aXZPvMgRa2dUIhapnSfHDr2QPOsQqwPjcNbn1XVunMJuXrH2aVU7/
         wgklQg2pOJAgmN640lmLc91lmvwh7JwUjYoxV6HNXLVe2eCzw1fYyynPZz/X99S34KWI
         CvleHCw292JDSd7cxWANg1ErKpkz1Ethhvp1rGNqipRo9l5/DjvoexpRTCidyuSXopLy
         7ysVgfv4UE6QInDY7U6VUi871h/d/8o1VigqLXUHu5hV19wo4VKTP5ev8t0x5rG0qwpi
         oVpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684913308; x=1687505308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0swQO8uc/orJERk9QNDSqEvMqkKwss9myYPJSpA3F+U=;
        b=CmL5lipgHToOqB+1B3F7L7NVtwzifa4loUBgSxd9EOURqf6XeBXb/qkVa4llGLlByV
         iokwMDdnfJXDp9EGTw74cuPZSzR7MkaQtv3JvpRGVbUgQi+G8nKOGKw4Gg59jwwGcyW3
         +jUFLnG3azBv8Lc9E0OxuWwOPRJiogsz8Xnl8BhjxFeQYmVETclZds6nh4W3PI2MOoaN
         mi+MsWQXjCYg8vGg2OqZge6WrLe2C79lhZT/btLIFxbFNQ05pGvF00mLl3JJ1sy34HRh
         hPLERVG0urHL0ZRkWFrjCn3ByY9Ras4SRVYLrsC+fY/2zyHGxrdmuOhElXMHkOzDg525
         VF5g==
X-Gm-Message-State: AC+VfDzsm0Yl7HOpbO+xFZyG8cvAXAMF6f7AQ/6YbUn+TO3zO4ImNccJ
        2OoTtlIqklQvuL85FRosQ+qyLA==
X-Google-Smtp-Source: ACHHUZ7Ze+BDoJpnvtfSS4dM7adgp5rGJ/U8V15YxuYCrayKGaoKZDnsC58WgdG6O3Y3PhNbI20uyQ==
X-Received: by 2002:a17:902:e74f:b0:1af:d1a4:25d with SMTP id p15-20020a170902e74f00b001afd1a4025dmr4274273plf.42.1684913308187;
        Wed, 24 May 2023 00:28:28 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id d20-20020a170902c19400b001ab01598f40sm8007246pld.173.2023.05.24.00.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 00:28:27 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     dianders@google.com, daniel@ffwll.ch, neil.armstrong@linaro.org,
        sam@ravnborg.org, airlied@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hsinyi@google.com,
        conor+dt@kernel.org
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [v2 0/4] Support Starry-himax83102-j02 and Starry-ili9882t TDDI MIPI-DSI panel
Date:   Wed, 24 May 2023 15:28:12 +0800
Message-Id: <20230524072816.1131039-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAD=FV=WRecTWsFM96k81YAx1=jJT0vpS4EPP0ZfWFUGHNFx9Tw@mail.gmail.com>
References: <CAD=FV=WRecTWsFM96k81YAx1=jJT0vpS4EPP0ZfWFUGHNFx9Tw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Compare V1:Add compatible for Starry himax83102-j02 and Starry-ili9882t
in dt-bindings.

Cong Yang (4):
  drm/panel: Support for Starry-himax83102-j02 TDDI MIPI-DSI panel
  dt-bindings: display: panel: Add compatible for Starry himax83102-j02
  drm/panel: Support for Starry-ili9882t TDDI MIPI-DSI panel
  dt-bindings: display: panel: Add compatible for Starry ili9882t

 .../display/panel/boe,tv101wum-nl6.yaml       |   4 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 471 ++++++++++++++++++
 2 files changed, 475 insertions(+)

-- 
2.25.1

