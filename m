Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFF0A605B5A
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 11:41:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbiJTJl0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 05:41:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbiJTJlT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 05:41:19 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEBC315CB2F
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 02:41:13 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id ez6so1732836pjb.1
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 02:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sZj/eVLpdJMM0Opwr/jyaIO+SCciGX2AZjn/GdTBpQA=;
        b=g4Ktt73Av5DXHtUWRPhkdozUzK84MSOlDP4t9zFfn5Ay2EoFxhswo8kFzrKqIMLV6+
         gu7JOw1OvB9Rc5nUsPDl7rPZydUlCihCYsO7dYzCWnNKtpw1vto5tDEweR0+uyoVqVU4
         yICAqLbC+XTmxFjAKsCNbKLcac/LKz0U7luRlBYuv8xRZRGdXP7m4R5LalKkw3t1V7rW
         sTLPRTftvpzNFsjtc0HCrIxAp/w5Jk/TAEe8S6jKtUDrZH3eSNN+8dMPdyNmkXCifU2T
         KCH5pg8FKMHiobdwQoq/yl0fvZTMzKkYFWWmFedHZMgetBoLRIZu9svfXEYztCDaFqla
         xzNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sZj/eVLpdJMM0Opwr/jyaIO+SCciGX2AZjn/GdTBpQA=;
        b=XpEg2sSc6jRH7pILImRXBblVOjeJgI9A7qrX0x6IG05EoRTj+5XoNPNn4GMNip/h7L
         xl8+6hSARZP5NWeqMG9nvLSRTIr0TlBea/5RuB408NDNakzqXIHoF4KVSp2YL39lycuf
         8zaXHBo/pcEkoaPxPVbDwH0WOunqkTPpqXFr4jLG1lh1sj/5Yb+qI6zsxWcf/Rj6d9mx
         B0R8lrr0LHiuBa8zRuHI7QfrH9K/7xQZymbbN3R/w4XYtLfgOR8L1EI9YvL1WqPLw5B0
         fyaYzj+x7w5U8g0YhYVxKXQqdeWCAAF3bpwFIVerGcE5JeCXJSZRCGANcyHmApYS2b7J
         FIGg==
X-Gm-Message-State: ACrzQf02Oq5a5Znr0/PVnGQoxnz7oafX62mDpEo0pfxNdvGYJLHkPb/n
        R42OHZHYtJZab34O0d2HQS8p/w==
X-Google-Smtp-Source: AMsMyM4xMHPMd+JkuggU22gCnF/yOECwQKjnCoK1Xr+jDuEeDH1kYic+FddQvw8PUs++ii3dG6DAcQ==
X-Received: by 2002:a17:903:2442:b0:17f:8069:533a with SMTP id l2-20020a170903244200b0017f8069533amr12880046pls.46.1666258872801;
        Thu, 20 Oct 2022 02:41:12 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id o12-20020a170902d4cc00b0016d9d6d05f7sm12425675plg.273.2022.10.20.02.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 02:41:12 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     davem@davemloft.net, kuba@kernel.org, michal.simek@xilinx.com,
        radhey.shyam.pandey@xilinx.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        pabeni@redhat.com, edumazet@google.com, andy.chiu@sifive.com,
        greentime.hu@sifive.com
Subject: [PATCH net-next 0/2] net:axienet: Add a DT property to configure frequency of the MDIO bus
Date:   Thu, 20 Oct 2022 17:41:04 +0800
Message-Id: <20221020094106.559266-1-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some FPGA platforms have to set frequency of the MDIO bus lower than 2.5
MHz. Thus, we add a DT property to work with them at boot time. The
default 2.5 MHz would be set if the property is not pressent.

Andy Chiu (2):
  net:xilinx_axi: set mdio frequency according to DT
  dt-bindings: add mdio frequency description

 .../bindings/net/xilinx_axienet.txt           |  3 +++
 .../net/ethernet/xilinx/xilinx_axienet_mdio.c | 25 ++++++++++++++++---
 2 files changed, 24 insertions(+), 4 deletions(-)

-- 
2.36.0

