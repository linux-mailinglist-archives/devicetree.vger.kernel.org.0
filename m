Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AC50710309
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 04:50:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbjEYCuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 22:50:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbjEYCuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 22:50:15 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12B31119
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 19:50:14 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-253724f6765so871051a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 19:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1684983013; x=1687575013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pmfOo8sqvCLi6YaDm0ju6+b60CNTopt6QJCHTuHnwbg=;
        b=yNFvwPzHm2u+wIivUiIK0StZNnna/Tvz3GNQeJfpN04nubgBREbFHY73W/FyvnHp07
         yAfy32xCDOWprRGkWrn21mWqyt0wblV06rIENOegGy0dUdkozr2b4lL94WY4bEJ93EeC
         yj4+73udxKROQDIvq5Gc1Tkh0UHg+ZGDeyIxDe35u18FjZuvdr1E17HVgOQaQnz7pv36
         47XZP2zG1hbouhKEdbSc73x2dF+0FQYfnfgQgXrJIxl+8TP0dsklBD3LUhjVBiiHUI/U
         RXhm+Ziy7X8zG3WH/LAPS99xOj1aDZsQtyFEz0euC2piejIZ1cLtZYI92fm08nKhYz0W
         aXmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684983013; x=1687575013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmfOo8sqvCLi6YaDm0ju6+b60CNTopt6QJCHTuHnwbg=;
        b=M/zZq2k6ek2u/FFoTHkyT6Bqwh/MsWgIA0YUfR9FHMlZJoEdKG3cdgba9GPwUPf9bF
         8FkSAI2E2UjTUlieu57htLRl3o67VX///iyWzpS9WUQYV4g1/yNsCkr1avvWJlQOwYrs
         UfFMpK5TeHiGGk2zx16pbTF5Zc1p/eRXaX9mgpVAyK17Yzi6DFkl1HZiyaSwy5J04vaX
         884piNgK4897JoiA0U0yh7IFzoodqbm3NRueBP+obcN2xjVMmdujA/K9N9ZFfNVzQu4p
         4SVoYjjRRjdXCXOCTSgXT624Y4vF9L0Wi1jxDsMnNLdkiGi1AG1wImb9jWpkWqB1+z0E
         mkzw==
X-Gm-Message-State: AC+VfDzLglJdgeoaxOmz4CJzcWCfQ18JcLlBttjl4wisyAllJIWamTKk
        FT+v6MbjSuzu3O4MHOMMebquhsYg8N/x7CK2u1g=
X-Google-Smtp-Source: ACHHUZ73oWmUIbq8e5phwYNP5ISbTeZjLuYBFFgcLut1Bgh5/EgEoO1X+ScWTBtq4EyXoyFGpzfZmQ==
X-Received: by 2002:a17:90a:bb15:b0:253:3b17:de90 with SMTP id u21-20020a17090abb1500b002533b17de90mr88634pjr.21.1684983013456;
        Wed, 24 May 2023 19:50:13 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id j6-20020a17090a734600b00253239144c5sm171815pjs.42.2023.05.24.19.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 19:50:12 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     dianders@chromium.org
Cc:     airlied@gmail.com, conor+dt@kernel.org, daniel@ffwll.ch,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        hsinyi@google.com, krzysztof.kozlowski+dt@linaro.org,
        linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
        robh+dt@kernel.org, sam@ravnborg.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [v3 0/4] Support Starry-himax83102-j02 and Starry-ili9882t TDDI MIPI-DSI panel
Date:   Thu, 25 May 2023 10:49:56 +0800
Message-Id: <20230525025000.3692510-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAD=FV=XUuzjjLq3YP3683jOd06odwk5Dox5MS8oY8goB-_8T5w@mail.gmail.com>
References: <CAD=FV=XUuzjjLq3YP3683jOd06odwk5Dox5MS8oY8goB-_8T5w@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Compare V2: order of the tables match the order they're
referenced.

Cong Yang (4):
  dt-bindings: display: panel: Add compatible for Starry himax83102-j02
  drm/panel: Support for Starry-himax83102-j02 TDDI MIPI-DSI panel
  dt-bindings: display: panel: Add compatible for Starry ili9882t
  drm/panel: Support for Starry-ili9882t TDDI MIPI-DSI panel

 .../display/panel/boe,tv101wum-nl6.yaml       |   4 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 471 ++++++++++++++++++
 2 files changed, 475 insertions(+)

-- 
2.25.1

