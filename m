Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BAEB565795
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 15:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234684AbiGDNm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 09:42:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234683AbiGDNmy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 09:42:54 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2077.outbound.protection.outlook.com [40.107.20.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8378610BA
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 06:42:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OG09VECdgNsf5ff/LUyn+J+58i5LWcd/zVA0Wkjr8J3ANJ4IiBxqaKoTCtbxUOMeDt/gg68pYSWTqBz3qmkeHqimx0NaIpI8O3RY16P5X9O2bkJQeCI7vdIk/WDVvUM5WWI0K/mtczPlzglZgVto/9phlwkjkPSKgma8Zf4CcpbU1opEMQKRCSigyWr2M4kiiW7na1cWrJHNc/J+1+khldeHMffHWZaAdVmcGXDV2GhyawzR9U8KWYRgRjgbz7bhF8ocyEPMU5CycDRL2qrhP3B1Ekqbnb+dW9hDmwjogTXfhRXM22ujt+AAuoWvL4BIKSh5Ac2f6YFbay5eYhCrbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7CdgqY2GUSOfcTZoX9EnWPtU8xHS6k7EAicMP1xcu30=;
 b=G4xnF005JJagTwnuqNdnIDfDoBetTpE/T6t2oZhD6c4LQH3piUPQ3LnYxKP63zcqgtUi6IKXUc+6DjjHLQXpJQvFaBmy/Hjd0rboKKA5IyFvsI86iWdQqZ9C+wMP3/D/bkds5wU0uPmP4/KwNWMKWCazmMRsOPZIlo+1t9Daa8638jPzi+VQtPG2b5E5VyRiqKAmU8HUAP2vP+T7RRFaMxFBh1cpxhzYT0F1QOaCKOtIW+DhTbugAtzeFqTDO54yoSD+xrNhV7UkErYoOU6n9HiPDpsoZ6s7OBZ4y9ldyivSYJ+7S55Xdqpxk3JxkTO/rIjbfXlQImFzgNyZoKizkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CdgqY2GUSOfcTZoX9EnWPtU8xHS6k7EAicMP1xcu30=;
 b=Dh0rno2CLixfMSJ290z8W3xC7CQR50EBggc+AjxPTSW8vlu89twxyrajUQteGhZdRgQEB/EItlWBPtsY294ra9E1dhiEeRWa74iDt5J5jxGksl3rVfql9rKjVEe8/wz15onC3lDMw+fONoguTPUmSGW0O8aDexai44letfHSlDE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com (2603:10a6:150:1e::22)
 by AM6PR04MB5141.eurprd04.prod.outlook.com (2603:10a6:20b:c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.20; Mon, 4 Jul
 2022 13:42:50 +0000
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4]) by GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4%5]) with mapi id 15.20.5373.018; Mon, 4 Jul 2022
 13:42:50 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     robh+dt@kernel.org, linux@armlinux.org.uk,
        devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v2 net-next 1/4] dt-bindings: net: convert sff,sfp to dtschema
Date:   Mon,  4 Jul 2022 16:42:10 +0300
Message-Id: <20220704134213.13100-2-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220704134213.13100-1-ioana.ciornei@nxp.com>
References: <20220704134213.13100-1-ioana.ciornei@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0071.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::7) To GV1PR04MB9055.eurprd04.prod.outlook.com
 (2603:10a6:150:1e::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b7f67ad1-900d-4477-cb6a-08da5dc31602
X-MS-TrafficTypeDiagnostic: AM6PR04MB5141:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sd2on1dW5AD/1nZszfr1sEx1FXdaYUIChOdyw8vO41e2RTZbypUXIFSUh05VlCxMzIxW+446Xp1HwMpzt9n1UNXeGF+iEQvs2KTCzvW9koTXdYgfJBhJvlBvi6XmIf9/MS6AnVoBZLAqt8mJD7HyTp3hCR7GW8NOkqGzvRTAU2cPlU64KhhV0NxwbyV1l2BMCtRSBZRR1y9t1J+jpM5ksZr06tAoMZAm6SbxR2ZuXP/Cj6jBNZzFsCluM0T+kR4j9lU0jdSsiNO0JCdJDfQIpLTbrDVUe67/7SXjOYIJTxuuCUd6fY5/kyYWHIFt2IW1PM1YNpT0gZiRm6uYvCbia47SeTFC0WpzdVZNxs0VqMO5/NAR61mWO14b81iwey9WKhzmpFYuiJIK+W8brsCOmwMOXpb9tONwRx2pa3nBTB6o1KS3Hqljq4w1W90aSaN1UT5gJNxAhrvTa+MuH7hgDi4DElkVyeXuOiFbQhBgjyN7bESredZzUwBSdG9NT6qtvKP9YK4mRSOUE9vcA5rX3ucY0kqREcgvNe3nwnzuYgNWVL+0VWussEXir05ztaBdi8Ez4dPuMAJG0IEvrQ89b82ykon6atbD1+C2nUmXsnJQempZYCWX0Z5UoV/dUJM+LFQoME+5NbgYgggfCCycaYAP8/bB+u0cvg7X5fkPDaEOFAeEkmcDxIqqtocBOf5uSsrbVp79Gm4Phf8NLdqVc05B8E11VWu42+WaRhCsUsUjDgqfDZWkIT7YmZWIV/ZXyt7MWaiPdemP9HK/YxDA3PfRlLMau266AEf9VGadwhwYKfhMeNXOEfdos/AFqQeXivoX71DVpsNu+e54/jjdsX580AXAO4OGv6SxcVgvFAAB656HW3lSrsnnJwJRh049
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9055.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(186003)(52116002)(26005)(6666004)(2906002)(6506007)(1076003)(2616005)(41300700001)(6512007)(86362001)(38100700002)(83380400001)(38350700002)(6486002)(66946007)(36756003)(8676002)(66556008)(66476007)(44832011)(4326008)(5660300002)(316002)(8936002)(478600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YOZKAzZG/fbeD0kYhw/VHmvGKUgZeBiYQhs14jyx7iuvaX+yuQ1Vuwex83Ny?=
 =?us-ascii?Q?J2N6WEFVhzRtXk1KMZQXtsGsQVR5N/x+8drD7sVbA9UzOyBrWfoIp10uiVov?=
 =?us-ascii?Q?wSC/HIVDQKlsOpMT9vDkWztXcee8I/Gew33TGHN2lpku3LPlNGxFlyKVcy+6?=
 =?us-ascii?Q?HTDXUEyRVad9cqLrfEGq4CL/r1TpvVTfaUDLo+Z0UiruGQElo1hZzYyYU826?=
 =?us-ascii?Q?OlF0rKikOT6+19aRW73THqU9nxnUKLw6ov0MYw7VXjM/UuTb4wQowzKAD85S?=
 =?us-ascii?Q?XSTRhGpZ3+dPlyBJHIm7FhcZdtINKAKt60AA8jNEcgNJV35PYjL9vr1/jEYk?=
 =?us-ascii?Q?ADs7oqhdjZa5Gat0M5ffZSKs7aACo8HEWv3h7kGg884xP2nhHmv1DCrXbcWd?=
 =?us-ascii?Q?vgI20XGf3zDRDHY+9mTk8nWoSoQ01t1WHnBKgvTztMbML6VScUDZU8QzgC6M?=
 =?us-ascii?Q?VfHPBuddgWiQHpSLgyvnxfby6r3NWorOKQmkYnGNlvly3p0HHYlPhTClr7ed?=
 =?us-ascii?Q?DGR+6L9JsDTNrom5bNeAZyHoNcal3esHnfz/IfYW0mpWrrSJ3lz1YkC9fLfa?=
 =?us-ascii?Q?wZCzBlwz7MuKGSzVN21Y36gc3hSBvoUKTuW91HoyPFuLB5u684RWQYSpo0Kp?=
 =?us-ascii?Q?YO5RkvINF1X9/An1MByGUhjaN4eLbEjbwpwrfU/2s4MznRfiqYezmid7zM8M?=
 =?us-ascii?Q?P2hgPatjvti7qgARZabzFNDzEtKc08SB6OwkvgflLorWNug93G1qZfex/qX6?=
 =?us-ascii?Q?8uof2NvrCBYle1Gz/r5458wd6+9eLWFqctQ+GeU+8bo4fE0qH2aT13htVqV+?=
 =?us-ascii?Q?/mz8faRKvpI3n7XgsLDkHfQLB6ZvdADxp2DeXEz7uNTrNixXAZu1qY8EIvJm?=
 =?us-ascii?Q?6Zl9kI+38uGsAeYsIkyQJwg1+SuuPOBRKlF3XLbuuZp/R4Tp7XcCFlTHZPn2?=
 =?us-ascii?Q?6ZfCYzedIv8JTgpFLg2butKovl9k56RTEiSttBHA3DtG24ejNzeGO7cCDExS?=
 =?us-ascii?Q?3VR1h6/bcm03ZmiSumLR7lDcPMpy6kV5i5ODQkHHKC6IkpPdXsq8JDjsfFEv?=
 =?us-ascii?Q?JpHYVnUrPnLn5TD7Eh6fCYs0aMdv3BhMo/jz9T7niGHj/0DqqXGuxQksKHHg?=
 =?us-ascii?Q?G60Ozr8PiUU2hTGEvaQU1/kJ5GZz0gZaV6H7dMgI8tiiCbQcfz6NKI6HodOV?=
 =?us-ascii?Q?ISvEC6PwJKAO0ZEJCtx2Z9V3UK9A7MvLtUoHMC0nHiq3+y9EwHkGcS26N1RC?=
 =?us-ascii?Q?JFM+DGRzwn8GebSZQhERVxlIHFJWna6UlP40+9atM5tsGu/zbhM1ob4ugpyH?=
 =?us-ascii?Q?Srh/IMxPB3qVyUJeHbOGV2+T8jPPWCUg9HcXYE5NjuY5m7IBP846TMNUb13Q?=
 =?us-ascii?Q?S1wJbi4zMQdZaoM2rx/Z/462hQbkTfSr8LVOpKxdn70Z2Vd0EETeuDvQ9Gvs?=
 =?us-ascii?Q?B70M7KEJcU/MQHqML84h2H0kicxxHzKUZ9fg9rHkNmBmTZIT67eI99RzrOw3?=
 =?us-ascii?Q?DiRWyg0EJVnwRLfjHYKD3xUKiVjy3PSVE/XXQNILAbxgN8+w9E2B9nND4+/p?=
 =?us-ascii?Q?MTi9JlUXb/km5ELI+3LOxmJ5vqQbiLmOFRE88pie?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f67ad1-900d-4477-cb6a-08da5dc31602
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9055.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 13:42:50.5163
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lJtv7XfF7Hh+gL3AsyCeKAOHdTFlvPXndTyy9sbZj5C1iHV0bC+Igzl+PASff6BDJefPqJu7eT/xjACtCVClww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5141
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the sff,sfp.txt bindings to the DT schema format.
Also add the new path to the list of maintained files.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
 - used the -gpios suffix
 - restricted the use of some gpios if the compatible is sff,sff

 .../devicetree/bindings/net/sff,sfp.txt       |  85 -----------
 .../devicetree/bindings/net/sff,sfp.yaml      | 143 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 3 files changed, 144 insertions(+), 85 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/sff,sfp.txt
 create mode 100644 Documentation/devicetree/bindings/net/sff,sfp.yaml

diff --git a/Documentation/devicetree/bindings/net/sff,sfp.txt b/Documentation/devicetree/bindings/net/sff,sfp.txt
deleted file mode 100644
index 832139919f20..000000000000
--- a/Documentation/devicetree/bindings/net/sff,sfp.txt
+++ /dev/null
@@ -1,85 +0,0 @@
-Small Form Factor (SFF) Committee Small Form-factor Pluggable (SFP)
-Transceiver
-
-Required properties:
-
-- compatible : must be one of
-  "sff,sfp" for SFP modules
-  "sff,sff" for soldered down SFF modules
-
-- i2c-bus : phandle of an I2C bus controller for the SFP two wire serial
-  interface
-
-Optional Properties:
-
-- mod-def0-gpios : GPIO phandle and a specifier of the MOD-DEF0 (AKA Mod_ABS)
-  module presence input gpio signal, active (module absent) high. Must
-  not be present for SFF modules
-
-- los-gpios : GPIO phandle and a specifier of the Receiver Loss of Signal
-  Indication input gpio signal, active (signal lost) high
-
-- tx-fault-gpios : GPIO phandle and a specifier of the Module Transmitter
-  Fault input gpio signal, active (fault condition) high
-
-- tx-disable-gpios : GPIO phandle and a specifier of the Transmitter Disable
-  output gpio signal, active (Tx disable) high
-
-- rate-select0-gpios : GPIO phandle and a specifier of the Rx Signaling Rate
-  Select (AKA RS0) output gpio signal, low: low Rx rate, high: high Rx rate
-  Must not be present for SFF modules
-
-- rate-select1-gpios : GPIO phandle and a specifier of the Tx Signaling Rate
-  Select (AKA RS1) output gpio signal (SFP+ only), low: low Tx rate, high:
-  high Tx rate. Must not be present for SFF modules
-
-- maximum-power-milliwatt : Maximum module power consumption
-  Specifies the maximum power consumption allowable by a module in the
-  slot, in milli-Watts.  Presently, modules can be up to 1W, 1.5W or 2W.
-
-Example #1: Direct serdes to SFP connection
-
-sfp_eth3: sfp-eth3 {
-	compatible = "sff,sfp";
-	i2c-bus = <&sfp_1g_i2c>;
-	los-gpios = <&cpm_gpio2 22 GPIO_ACTIVE_HIGH>;
-	mod-def0-gpios = <&cpm_gpio2 21 GPIO_ACTIVE_LOW>;
-	maximum-power-milliwatt = <1000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&cpm_sfp_1g_pins &cps_sfp_1g_pins>;
-	tx-disable-gpios = <&cps_gpio1 24 GPIO_ACTIVE_HIGH>;
-	tx-fault-gpios = <&cpm_gpio2 19 GPIO_ACTIVE_HIGH>;
-};
-
-&cps_emac3 {
-	phy-names = "comphy";
-	phys = <&cps_comphy5 0>;
-	sfp = <&sfp_eth3>;
-};
-
-Example #2: Serdes to PHY to SFP connection
-
-sfp_eth0: sfp-eth0 {
-	compatible = "sff,sfp";
-	i2c-bus = <&sfpp0_i2c>;
-	los-gpios = <&cps_gpio1 28 GPIO_ACTIVE_HIGH>;
-	mod-def0-gpios = <&cps_gpio1 27 GPIO_ACTIVE_LOW>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&cps_sfpp0_pins>;
-	tx-disable-gpios = <&cps_gpio1 29 GPIO_ACTIVE_HIGH>;
-	tx-fault-gpios  = <&cps_gpio1 26 GPIO_ACTIVE_HIGH>;
-};
-
-p0_phy: ethernet-phy@0 {
-	compatible = "ethernet-phy-ieee802.3-c45";
-	pinctrl-names = "default";
-	pinctrl-0 = <&cpm_phy0_pins &cps_phy0_pins>;
-	reg = <0>;
-	interrupt = <&cpm_gpio2 18 IRQ_TYPE_EDGE_FALLING>;
-	sfp = <&sfp_eth0>;
-};
-
-&cpm_eth0 {
-	phy = <&p0_phy>;
-	phy-mode = "10gbase-kr";
-};
diff --git a/Documentation/devicetree/bindings/net/sff,sfp.yaml b/Documentation/devicetree/bindings/net/sff,sfp.yaml
new file mode 100644
index 000000000000..86f3ed2546d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/sff,sfp.yaml
@@ -0,0 +1,143 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/net/sff,sfp.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Small Form Factor (SFF) Committee Small Form-factor Pluggable (SFP)
+  Transceiver
+
+maintainers:
+  - Russell King <linux@armlinux.org.uk>
+
+properties:
+  compatible:
+    enum:
+      - sff,sfp  # for SFP modules
+      - sff,sff  # for soldered down SFF modules
+
+  i2c-bus:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle of an I2C bus controller for the SFP two wire serial
+
+  maximum-power-milliwatt:
+    maxItems: 1
+    description:
+      Maximum module power consumption Specifies the maximum power consumption
+      allowable by a module in the slot, in milli-Watts. Presently, modules can
+      be up to 1W, 1.5W or 2W.
+
+patternProperties:
+  "mod-def0-gpios":
+    maxItems: 1
+    description:
+      GPIO phandle and a specifier of the MOD-DEF0 (AKA Mod_ABS) module
+      presence input gpio signal, active (module absent) high. Must not be
+      present for SFF modules
+
+  "los-gpios":
+    maxItems: 1
+    description:
+      GPIO phandle and a specifier of the Receiver Loss of Signal Indication
+      input gpio signal, active (signal lost) high
+
+  "tx-fault-gpios":
+    maxItems: 1
+    description:
+      GPIO phandle and a specifier of the Module Transmitter Fault input gpio
+      signal, active (fault condition) high
+
+  "tx-disable-gpios":
+    maxItems: 1
+    description:
+      GPIO phandle and a specifier of the Transmitter Disable output gpio
+      signal, active (Tx disable) high
+
+  "rate-select0-gpios":
+    maxItems: 1
+    description:
+      GPIO phandle and a specifier of the Rx Signaling Rate Select (AKA RS0)
+      output gpio signal, low - low Rx rate, high - high Rx rate Must not be
+      present for SFF modules
+
+  "rate-select1-gpios":
+    maxItems: 1
+    description:
+      GPIO phandle and a specifier of the Tx Signaling Rate Select (AKA RS1)
+      output gpio signal (SFP+ only), low - low Tx rate, high - high Tx rate. Must
+      not be present for SFF modules
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: sff,sff
+    then:
+      properties:
+        mod-def0-gpios: false
+        rate-select0-gpios: false
+        rate-select1-gpios: false
+
+required:
+  - compatible
+  - i2c-bus
+
+additionalProperties: false
+
+examples:
+  - | # Direct serdes to SFP connection
+    #include <dt-bindings/gpio/gpio.h>
+
+    sfp_eth3: sfp-eth3 {
+      compatible = "sff,sfp";
+      i2c-bus = <&sfp_1g_i2c>;
+      los-gpios = <&cpm_gpio2 22 GPIO_ACTIVE_HIGH>;
+      mod-def0-gpios = <&cpm_gpio2 21 GPIO_ACTIVE_LOW>;
+      maximum-power-milliwatt = <1000>;
+      pinctrl-names = "default";
+      pinctrl-0 = <&cpm_sfp_1g_pins &cps_sfp_1g_pins>;
+      tx-disable-gpios = <&cps_gpio1 24 GPIO_ACTIVE_HIGH>;
+      tx-fault-gpios = <&cpm_gpio2 19 GPIO_ACTIVE_HIGH>;
+    };
+
+    cps_emac3 {
+      phy-names = "comphy";
+      phys = <&cps_comphy5 0>;
+      sfp = <&sfp_eth3>;
+    };
+
+  - | # Serdes to PHY to SFP connection
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    sfp_eth0: sfp-eth0 {
+      compatible = "sff,sfp";
+      i2c-bus = <&sfpp0_i2c>;
+      los-gpios = <&cps_gpio1 28 GPIO_ACTIVE_HIGH>;
+      mod-def0-gpios = <&cps_gpio1 27 GPIO_ACTIVE_LOW>;
+      pinctrl-names = "default";
+      pinctrl-0 = <&cps_sfpp0_pins>;
+      tx-disable-gpios = <&cps_gpio1 29 GPIO_ACTIVE_HIGH>;
+      tx-fault-gpios  = <&cps_gpio1 26 GPIO_ACTIVE_HIGH>;
+    };
+
+    mdio {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      p0_phy: ethernet-phy@0 {
+        compatible = "ethernet-phy-ieee802.3-c45";
+        pinctrl-names = "default";
+        pinctrl-0 = <&cpm_phy0_pins &cps_phy0_pins>;
+        reg = <0>;
+        interrupt = <&cpm_gpio2 18 IRQ_TYPE_EDGE_FALLING>;
+        sfp = <&sfp_eth0>;
+      };
+    };
+
+    cpm_eth0 {
+      phy = <&p0_phy>;
+      phy-mode = "10gbase-kr";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 28108e4fdb8f..8677878603fe 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18110,6 +18110,7 @@ SFF/SFP/SFP+ MODULE SUPPORT
 M:	Russell King <linux@armlinux.org.uk>
 L:	netdev@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/net/sff,sfp.yaml
 F:	drivers/net/phy/phylink.c
 F:	drivers/net/phy/sfp*
 F:	include/linux/mdio/mdio-i2c.h
-- 
2.17.1

