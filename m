Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 194FE4CD25D
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 11:26:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234292AbiCDK1o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 05:27:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233073AbiCDK1n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 05:27:43 -0500
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12FE11AA057
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 02:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646389612;
    s=strato-dkim-0002; d=gerhold.net;
    h=Message-Id:Date:Subject:Cc:To:From:Cc:Date:From:Subject:Sender;
    bh=zudBi6qDl21Fw03NfI0Dqw3aifqtt17ZUkifzCNDbRM=;
    b=AFm4UJ71wJ+mMup/7yUENhMkYZX/RZV2kWV4Y7oEP88CWLgIKo+JG9OOQkYaq1JpZb
    MRuOhpf2o0fesqYNs4P8ZZzoohk0V2EnNVKKAakkmpWYFyynHSxHyvIWRZ0+t6L3LDv2
    346wOkDfQO62jeGke98IYsRLNd8rGJqpKlipEUrlb7tfOee/PEmcr7Mv2fOb4+ACcvhC
    z/Mxm+k/zD+KZTAdBxyuZkbBEQslacSuQVkRpAphDAyTgMpxpd2LCACv4C8/PzaXW/iq
    Uu8iWIeV+cYYJdbO74i7jzkLf7H2UIjqIb9SQy663USZ6jfbTlzfi9ZuAqPcJdJLeV71
    SU5g==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7UOGqRde+a0fyL2muE="
X-RZG-CLASS-ID: mo00
Received: from droid..
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id 2c4d58y24AQp4vC
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Fri, 4 Mar 2022 11:26:51 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v2 0/2] ASoC: codecs: Add Awinic AW8738 audio amplifier driver
Date:   Fri,  4 Mar 2022 11:24:50 +0100
Message-Id: <20220304102452.26856-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds a simple driver and DT schema for the Awinic AW8738 
audio amplifier. It's fairly simple - the main difference to 
simple-amplifier is that there is a "one-wire pulse control" that 
allows configuring the amplifier to one of a few pre-defined modes. 
This can be used to configure the speaker-guard function (primarily
the power limit for the amplifier).

Jonathan Albrieux (1):
  ASoC: codecs: Add Awinic AW8738 audio amplifier driver

Stephan Gerhold (1):
  ASoC: dt-bindings: Add schema for "awinic,aw8738"

 .../bindings/sound/awinic,aw8738.yaml         |  54 +++++++++
 sound/soc/codecs/Kconfig                      |  10 ++
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/aw8738.c                     | 104 ++++++++++++++++++
 4 files changed, 170 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/awinic,aw8738.yaml
 create mode 100644 sound/soc/codecs/aw8738.c

-- 
2.35.1

