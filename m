Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 565DC58D5DB
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 10:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238566AbiHII4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 04:56:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237655AbiHII4k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 04:56:40 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20FB822537
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 01:56:39 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h13so13562783wrf.6
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 01:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=bXLpXmWL+T2aMJD2mxacKkNa6+tQMtWwj5lWrNrsUB4=;
        b=DnIqRWDo09RJul5vv+F5yTbZTopzEj3jbl38jNbPUKWwObnJ5P4dZfKlxyXkFB2VJg
         veF3hn4jAAcE1lSxatgP7Ry6C+N/BauvxaDw9NLeP2Tr+BMEVkFi0r6Xqn8gjFJJnzdk
         HF2IUKVgo+qzeMV9LFFvcakMb7a2h1orRYKZKQyR654M+M4+RLeQuHGja57/xEKWx0s8
         Lywbb0ZdnbGTMhPO7sn8k+p0Y3IobsUlz7RRaTy20cXevux0fIoz+OqTWycPVMmzox3k
         qSoHvxWKYqQ+pzd3QciVR/KzCAydWgG/XcSJItFvHMG6SWdAKYkGo0Snh+FC8pU72kYh
         hDSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=bXLpXmWL+T2aMJD2mxacKkNa6+tQMtWwj5lWrNrsUB4=;
        b=OJ4f6ia3vJre33OqLV5/tdta/WzKW9GiZNpEtF6nBT36zt3KV58egIV+pRbhF71H5X
         FQNkKH3mQ1dx4U9d3oOiXIfLUIYfqAfqYuYUdAgubTS1BZ2RJXG4/UUUQ1EUZZlicodG
         Fw8qGNB+cB9Gv+um81L5N4fNrXw66yEqMoV0E4LXw2Wu1vR0awN3WUpKd+16qHlc4AR2
         Bfe+da4fxM5qwll4mXX7a18KoeaELhezzEWkEDnzsnPiKsvZ0v2yki+0EOO1mRK6l+06
         Jpg7L/D6cYLl+7goe5rGWG/qksoRAJ3pscSLZf8/11KQin7Av7ysiyxVBRQdwxBHh1ao
         LLhA==
X-Gm-Message-State: ACgBeo0X376JbO73e89xGwnBXeGz9AxwC8opNxmKi6hfyI/QW2xMEZ/Z
        g7pWhCVfSq7oOxscCzSjwfjW7Q==
X-Google-Smtp-Source: AA6agR4yrlmW3A2BU6dz6lzflbszCSmZXiu9M69XebLiEQKaMKzbnJhCPb5iMGPYgITbRuulDIDLRg==
X-Received: by 2002:a05:6000:178c:b0:223:141:8a14 with SMTP id e12-20020a056000178c00b0022301418a14mr4040423wrg.629.1660035397455;
        Tue, 09 Aug 2022 01:56:37 -0700 (PDT)
Received: from localhost.localdomain (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id c5-20020adfe705000000b0021f1522c93bsm15746147wrm.45.2022.08.09.01.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 01:56:36 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     daniel.lezcano@linaro.org, rafael@kernel.org
Cc:     michael@walle.cc, dan.carpenter@oracle.com, linux@roeck-us.net,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS)
Subject: [PATCH v2 3/4] dt-bindings: thermal: Fix missing required property
Date:   Tue,  9 Aug 2022 10:56:28 +0200
Message-Id: <20220809085629.509116-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220809085629.509116-1-daniel.lezcano@linaro.org>
References: <20220809085629.509116-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When the thermal zone description was converted to yaml schema, the
required 'trips' property was forgotten.

The initial text bindings was describing:

"
[ ... ]

* Thermal zone nodes

The thermal zone node is the node containing all the required info
for describing a thermal zone, including its cooling device bindings. The
thermal zone node must contain, apart from its own properties, one sub-node
containing trip nodes and one sub-node containing all the zone cooling maps.

Required properties:
- polling-delay:        The maximum number of milliseconds to wait between polls
  Type: unsigned        when checking this thermal zone.
  Size: one cell

- polling-delay-passive: The maximum number of milliseconds to wait
  Type: unsigned        between polls when performing passive cooling.
  Size: one cell

- thermal-sensors:      A list of thermal sensor phandles and sensor specifier
  Type: list of         used while monitoring the thermal zone.
  phandles + sensor
  specifier

- trips:                A sub-node which is a container of only trip point nodes
  Type: sub-node        required to describe the thermal zone.

Optional property:
- cooling-maps:         A sub-node which is a container of only cooling device
  Type: sub-node        map nodes, used to describe the relation between trips
                        and cooling devices.
  [ ... ]

"

Now the schema describes:

"
    [ ... ]

    required:
      - polling-delay
      - polling-delay-passive
      - thermal-sensors

    [ ... ]
"

Add the missing 'trips' property in the required properties.

Fixed: 1202a442a31fd ("dt-bindings: thermal: Add yaml bindings for thermal zones")
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 Documentation/devicetree/bindings/thermal/thermal-zones.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
index 2d34f3ccb257..8d2c6d74b605 100644
--- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
+++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
@@ -214,6 +214,7 @@ patternProperties:
       - polling-delay
       - polling-delay-passive
       - thermal-sensors
+      - trips
 
     additionalProperties: false
 
-- 
2.34.1

