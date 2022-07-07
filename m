Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28777569D74
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 10:30:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233804AbiGGIaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 04:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232967AbiGGIau (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 04:30:50 -0400
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BE351C10C
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 01:30:48 -0700 (PDT)
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
        by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220707083046epoutp0281e736736fe310b85a60d6818d28f92e~-ftYtmmzZ1940619406epoutp02h
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 08:30:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220707083046epoutp0281e736736fe310b85a60d6818d28f92e~-ftYtmmzZ1940619406epoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1657182646;
        bh=lXq4Wa54kpEJnaB9mu+o4gn37OuYz9zW1ZzBnUZ85/k=;
        h=From:To:Cc:Subject:Date:References:From;
        b=q3fRBNI1IeM54qiOtA+8pFLyQ+OX5aoJopHucNXaLbrxTDvDjoMVMY8+rIEkW7WY5
         CkzS9ZcQWdconbxvhlQD/gtUzLQAGdzD80yMSV+VXPe3X2d6PIFeykk5vh/syBIgG4
         yiiv/gLrJAigTJRxQScKDuvLdzdhIQxgFbvkYKPk=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
        epcas2p4.samsung.com (KnoxPortal) with ESMTP id
        20220707083045epcas2p452dd4f08597a534de7bdab974f18a6ca~-ftYX2NWX2705527055epcas2p40;
        Thu,  7 Jul 2022 08:30:45 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.89]) by
        epsnrtp3.localdomain (Postfix) with ESMTP id 4LdqP13mGXz4x9Pt; Thu,  7 Jul
        2022 08:30:45 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
        epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
        31.FA.09642.5B996C26; Thu,  7 Jul 2022 17:30:45 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
        epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
        20220707083044epcas2p2cb1dfda1d46fe70340b8ecf77b014511~-ftXSX0v-2304623046epcas2p2L;
        Thu,  7 Jul 2022 08:30:44 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
        epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
        20220707083044epsmtrp1d0fc468efb191e037157d4f85339dfb4~-ftXRinvX2471024710epsmtrp1a;
        Thu,  7 Jul 2022 08:30:44 +0000 (GMT)
X-AuditID: b6c32a47-5e1ff700000025aa-fd-62c699b5f3f9
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
        epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
        A8.CA.08802.4B996C26; Thu,  7 Jul 2022 17:30:44 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
        epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
        20220707083044epsmtip2e5ddd383e62e6765639e74912ea2b0c4~-ftXGFZLD1718017180epsmtip2n;
        Thu,  7 Jul 2022 08:30:44 +0000 (GMT)
From:   Chanho Park <chanho61.park@samsung.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH] dt-bindings: arm: cpus: add cortex-a78ae compatible
Date:   Thu,  7 Jul 2022 17:27:53 +0900
Message-Id: <20220707082753.28862-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrIKsWRmVeSWpSXmKPExsWy7bCmhe7WmceSDGZ0ilhc3q9tMf/IOVaL
        vhcPmS02Pb7GatG69wi7A6vHplWdbB53ru1h89i8pN6jb8sqRo/Pm+QCWKOybTJSE1NSixRS
        85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOAVisplCXmlAKFAhKLi5X0
        7WyK8ktLUhUy8otLbJVSC1JyCswL9IoTc4tL89L18lJLrAwNDIxMgQoTsjM235vNXjCDreLD
        2w7mBsZW1i5GTg4JAROJBQfXM3YxcnEICexglHhzfyczSEJI4BOjxK/XCRD2Z0aJCRtFYBq2
        /t7DDNGwi1Hi8sttrBDOR0aJa/23GEGq2AR0JbY8fwVmiwjESzy/8J4FxGYWyJc49n8eG4gt
        LOAi8f/9IbAaFgFViQ/XZ4PZvAJ2EheO/2WE2CYvseHgdhaIuKDEyZlPoObISzRvnQ12hYTA
        LnaJWS+6gBwOIMdF4lWbFESvsMSr41vYIWwpiZf9bVB2scTSWZ+YIHobgD7Y9osNImEsMetZ
        OyPIHGYBTYn1u/QhRipLHLkFtZZPouPwX3aIMK9ER5sQRKO6xIHt01kgbFmJ7jmfoYHrIbGp
        fSYjJAxjJbr2bGKewCg/C8kzs5A8Mwth7wJG5lWMYqkFxbnpqcVGBcbwKE3Oz93ECE57Wu47
        GGe8/aB3iJGJg/EQowQHs5IIb2770SQh3pTEyqrUovz4otKc1OJDjKbA4J3ILCWanA9MvHkl
        8YYmlgYmZmaG5kamBuZK4rxeKRsShQTSE0tSs1NTC1KLYPqYODilGpjmHF/tH3NkouEUzt2e
        yfWhfdLyHBvnH5X8Z7ijtGTH2vMuJyaccQlU/iw15+ecxV1JHRVGtpMOCs78KP/N+R/zoaJ9
        lheE3jFYMcjvUrmTtUjY7nLBlOKs7/drJ1vYndP0/LLdoUrmQjPvoaykWe2CfmdvBM3Ufbbm
        36pCE5Z7aurMSRJnitPZNqlYh60rFbk//Wi4Uen6RRYnzlzRddva9d+r86Pjhmty/+6eSjDd
        MW3ZSqnZWr9eqGSteqx/tvZgtBWH8hY9juvTPJZILtvyPJDp6IK5q+8KbdqRv2PerZbqtL0W
        60pmzDgl/HjutX8XZhdumaPkf5AjckbmuksJJVInYt/UNOw/Vv9XYf41eyWW4oxEQy3mouJE
        AMrRC5UEBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrELMWRmVeSWpSXmKPExsWy7bCSvO6WmceSDHYs0bC4vF/bYv6Rc6wW
        fS8eMltsenyN1aJ17xF2B1aPTas62TzuXNvD5rF5Sb1H35ZVjB6fN8kFsEZx2aSk5mSWpRbp
        2yVwZWy+N5u9YAZbxYe3HcwNjK2sXYycHBICJhJbf+9hBrGFBHYwSty/7wURl5V49m4HO4Qt
        LHG/5QhQPRdQzXtGiSO3b7GBJNgEdCW2PH/FCGKLCMRLbP6ykAXEZhYolJjXMw+sWVjAReL/
        +0NgNSwCqhIfrs8Gs3kF7CQuHP/LCLFAXmLDwe0sEHFBiZMzn0DNkZdo3jqbeQIj3ywkqVlI
        UgsYmVYxSqYWFOem5xYbFhjlpZbrFSfmFpfmpesl5+duYgQHo5bWDsY9qz7oHWJk4mA8xCjB
        wawkwpvbfjRJiDclsbIqtSg/vqg0J7X4EKM0B4uSOO+FrpPxQgLpiSWp2ampBalFMFkmDk6p
        Bqbg8I9f5vdqr+I6665TvWzi6tq9DOF9l54/U+vbeXH3jZ8Ogfeuzd3svfX0djVhg1+f83Mr
        l09sXjozmsu06qSgqY6p0FqJrVcP6wTvTBbOvV/y39RBT++IxyfjjylHnA42n7+g8tKQy3wf
        70zVldNv6Gj9+mhSPP3LyRvJO3vWvNtY/nCm+NENC98Izy7puyDMG1fttPt1742tZfoM7++d
        NDq03/D8fa2bzxYoPG/XEnv7h+XWgYINpfdCUoSnbp/lLrzvfdzp2JzYlzfbfk97kZz02OOa
        bXvtjbfhJe1WARfMdr26ZTbvsUVSdW3ZxqBbwtpifgfvn/vRVH7zyZJXpX+ybgl7TLmwVmn6
        1jXJPEosxRmJhlrMRcWJAK+PZ0O1AgAA
X-CMS-MailID: 20220707083044epcas2p2cb1dfda1d46fe70340b8ecf77b014511
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220707083044epcas2p2cb1dfda1d46fe70340b8ecf77b014511
References: <CGME20220707083044epcas2p2cb1dfda1d46fe70340b8ecf77b014511@epcas2p2.samsung.com>
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cortex A78AE's MPIDR has been added since
commit 83bea32ac7ed ("arm64: Add part number for Arm Cortex-A78AE")
We also need to add the compatible.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index ed04650291a8..f565cc4c9d79 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -138,6 +138,7 @@ properties:
       - arm,cortex-a76
       - arm,cortex-a77
       - arm,cortex-a78
+      - arm,cortex-a78ae
       - arm,cortex-a510
       - arm,cortex-a710
       - arm,cortex-m0
-- 
2.37.0

