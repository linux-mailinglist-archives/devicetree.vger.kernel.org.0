Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6A654BDD58
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344175AbiBULKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 06:10:32 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:40630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355729AbiBULKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 06:10:21 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8A9D10BC
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 02:41:40 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id m27so14461358wrb.4
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 02:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7izwyhUUirLGOcbvAKJ/ySoVgmZ6zFx6mt9CtP50ZlI=;
        b=scTQgqOpSpwrm9rIIYQvXQ9ri48Rb9VOE6Ov48Q7Wi/2AVOQRsZGHvJyISPd8tdmJj
         fu2dmeagLhwu8sYbPzjobQSw+amz2had4hNZE3QRNN8C2M5iQRmHs4/YPuv++ddKVz+4
         zIZMciYnCEdvNukga9CPtvxD8thHLgRf9vFYI65ZdNWpwq+SZnq+jAf+buBU9cD20Tak
         LzKl9Rpt9e4tksx5SXy0qRc5B3HLDHdbUllxB8P5s9caCLxqRQOczP3zDWI1b5b+f8SY
         9yuS4KUfBQFhsiCj+65dvGqBUcAWThiDZxLGgIWwJVHfSulJ0ZQVo1/hFF1F+rBR6CkA
         EEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7izwyhUUirLGOcbvAKJ/ySoVgmZ6zFx6mt9CtP50ZlI=;
        b=u2XEsZ6QeCfrNPJPSzum0iuvG/17RNFvvkabIfINoL/Y4pBKcNmVNtELRHo4XWrY7b
         PbtWhNgZzVdb/ZF2vDtj3R8kYqW24mYE+XZIuVzSyDrPgUrSVTJI1p1ra/vVQejnx9cN
         ejdC2tA0U4vfMxevo8cLOuzH4KMEbe3USzRxZl6Em4btdROblzRZPX1HPTYrAE+IQ4nD
         USFxINTshgzFqXOkc+SoFKLky/b6kagrOLgaW6z9KzXMI79QcVIjYgv5+G4dxEGAggG2
         h8KyU4miYKCtK3/OIBp2BPk5YFHMRplzXyYl5BdvVqgEmISGXYRMYI3uoiufeCVqoRsj
         TIjg==
X-Gm-Message-State: AOAM5308fa27qWBLMEEgx2sLKObiYWDak32GU/5qkpkyVcbStWi908v5
        5AMEA+OyXwczPnkpxHEVBjPAnQ==
X-Google-Smtp-Source: ABdhPJw28jTxSN/JYzVLnVzXnpvJGWhK5Wo2D27AVHnLLE47KPQvJxrpG/4l2yAZrLWAw6jmzoDwhA==
X-Received: by 2002:a5d:45c4:0:b0:1e4:a672:586b with SMTP id b4-20020a5d45c4000000b001e4a672586bmr14394858wrs.388.1645440098837;
        Mon, 21 Feb 2022 02:41:38 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id n19-20020a05600c4f9300b0037c06fe68casm7584817wmq.44.2022.02.21.02.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 02:41:38 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/3] soundwire: qcom: add pm runtime support
Date:   Mon, 21 Feb 2022 10:41:24 +0000
Message-Id: <20220221104127.15670-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds pm runtime support to Qualcomm SounWire Controller using
SoundWire Clock Stop and Wake up using Headset events on supported instances and
a bus reset on instances that require full reset.


Tested it on SM8250 MTP and Dragon Board DB845c

--srini


Srinivas Kandagatla (3):
  soundwire: qcom: add runtime pm support
  dt-bindings: soundwire: qcom: document optional wake irq
  soundwire: qcom: add wake up interrupt support

 .../bindings/soundwire/qcom,sdw.txt           |   2 +-
 drivers/soundwire/qcom.c                      | 215 +++++++++++++++++-
 2 files changed, 215 insertions(+), 2 deletions(-)

-- 
2.21.0

