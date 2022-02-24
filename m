Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 210AF4C2D00
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 14:32:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234701AbiBXNcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 08:32:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234962AbiBXNcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 08:32:11 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A170D20F67
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 05:31:41 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id p9so3028844wra.12
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 05:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UmVaZe5WSxDiTqf74Pc2xrLlr9buKqJFnFD7mGOeeZQ=;
        b=X+4hbVuuPt44tTksNFwLknPj3qpjpjuhlAwO2hCrkvTD87j39VczB7GvnEIzthjT/e
         WOdbn8iXn1qe0tGbWLvewZ/UezZ39LrTIwtnT1f7l7F00geI/ii4e+VtMj8dUO/rhu7s
         /IgoenmAxZztegUykln+ZJHB6srH3RkMz2rRcrvuDPN2E7+NNwcwtDCeobU5bJldZ0ZX
         /Oz98ktWfKU61kq1DQfZ6s5ZoQeiScjnu1IG8zMskHj2QlS5AvBHBVTZPmdcSvPYqCSi
         ihQapqvmYJLweLPHEOO2lxc9bfnl85KgaAISDgIW/nUPH2Q6Sp9m5zsMvojK47xWkBpS
         7ZoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UmVaZe5WSxDiTqf74Pc2xrLlr9buKqJFnFD7mGOeeZQ=;
        b=b7JhLpfhXNsR2lhEQgtx6jnI44Oj3vh77Dyl7+GxFpguR3jgfLZfzGbV28syizMY6n
         QGv6sIqIs2ihRA8Iq6Eee8FB2oLV8QqVGguoYaJd283Bm5mjDqMsAoYenTCObubvnvSF
         J+VcfOUNqXT+mixqHyrlr9qdyamfeIiRPRhorMTKYzXQr3GkJpwYa6uTFR/qP+VoZLRe
         8kSAf8SmKo4CdhhE0H2vAOakgK+xQx1cqxh5ge4vG8ddvxpBKrX4Mp8FVdUlFavcZtYm
         JL3vdpOa5j1bJH9GCvCmz2287Rye6dFtuHgcOXWYIJI4tVN7nhWOFCapmqcRmHp6hGb4
         zRgA==
X-Gm-Message-State: AOAM5338VRcPpmfyJUmRHnTlgnGKvSJGtM6KxZLKH+frdFsCk8iKOuJ5
        TY58DH24I+7vcrHvWk3700ki6Q==
X-Google-Smtp-Source: ABdhPJzGxwrAIaDsnmbLEemWdu2TqUsgbnEEJsfcoRpGlvqbPOOKjtAfW3tLr1uHErzQNUzrhyE1mw==
X-Received: by 2002:a5d:46c9:0:b0:1ea:9cab:c2e4 with SMTP id g9-20020a5d46c9000000b001ea9cabc2e4mr2173369wrs.1.1645709500156;
        Thu, 24 Feb 2022 05:31:40 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id e33-20020a05600c4ba100b003810c690ba2sm2019142wmp.3.2022.02.24.05.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 05:31:39 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/3] soundwire: qcom: add pm runtime support
Date:   Thu, 24 Feb 2022 13:31:22 +0000
Message-Id: <20220224133125.6674-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds pm runtime support to Qualcomm SounWire Controller using
SoundWire Clock Stop and Wake up using Headset events on supported instances and
instances like WSA which do not support clock stop a soft reset of controller
along with full rest of slaves is done to resume from a low power state.

Tested it on SM8250 MTP and Dragon Board DB845c

--srini

Changes since v1:
 - updated wake irq to not deal with slave pm runtime directly.
 - added delay after soft reset of SoundWire controller where clock stop is not supported


Srinivas Kandagatla (3):
  soundwire: qcom: add runtime pm support
  dt-bindings: soundwire: qcom: document optional wake irq
  soundwire: qcom: add in-band wake up interrupt support

 .../bindings/soundwire/qcom,sdw.txt           |   2 +-
 drivers/soundwire/qcom.c                      | 202 +++++++++++++++++-
 2 files changed, 202 insertions(+), 2 deletions(-)

-- 
2.21.0

