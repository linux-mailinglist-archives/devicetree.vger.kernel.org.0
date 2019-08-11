Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ECFC189499
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 00:07:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726053AbfHKWG6 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sun, 11 Aug 2019 18:06:58 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:46314 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726014AbfHKWG6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 11 Aug 2019 18:06:58 -0400
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x7BM1fQ1108669
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2019 18:06:56 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.75])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2uasq3th8c-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2019 18:06:56 -0400
Received: from localhost
        by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
        for <devicetree@vger.kernel.org> from <miltonm@us.ibm.com>;
        Sun, 11 Aug 2019 22:06:56 -0000
Received: from us1a3-smtp06.a3.dal06.isc4sb.com (10.146.103.243)
        by smtp.notes.na.collabserv.com (10.106.227.123) with smtp.notes.na.collabserv.com ESMTP;
        Sun, 11 Aug 2019 22:06:46 -0000
Received: from us1a3-mail228.a3.dal06.isc4sb.com ([10.146.103.71])
          by us1a3-smtp06.a3.dal06.isc4sb.com
          with ESMTP id 2019081122064531-459019 ;
          Sun, 11 Aug 2019 22:06:45 +0000 
In-Reply-To: <20190810095325.5333-1-wangzqbj@inspur.com>
From:   "Milton Miller II" <miltonm@us.ibm.com>
To:     John Wang <wangzqbj@inspur.com>
Cc:     <robh+dt@kernel.org>, <mark.rutland@arm.com>, <trivial@kernel.org>,
        <linux@roeck-us.net>, <venture@google.com>,
        <jgebben@sweptlaser.com>, <anson.huang@nxp.com>,
        <devicetree@vger.kernel.org>, <openbmc@lists.ozlabs.org>,
        <duanzhijia01@inspur.com>, <mine260309@gmail.com>
Date:   Sun, 11 Aug 2019 22:06:45 +0000
MIME-Version: 1.0
Sensitivity: 
Importance: Normal
X-Priority: 3 (Normal)
References: <20190810095325.5333-1-wangzqbj@inspur.com>
X-Mailer: IBM iNotes ($HaikuForm 1054) | IBM Domino Build
 SCN1812108_20180501T0841_FP55 May 22, 2019 at 11:09
X-LLNOutbound: False
X-Disclaimed: 49647
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset=UTF-8
x-cbid: 19081122-6875-0000-0000-0000000642D2
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.40962; ST=0; TS=0; UL=0; ISC=; MB=0.000003
X-IBM-SpamModules-Versions: BY=3.00011582; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01245454; UDB=6.00657162; IPR=6.01026945;
 MB=3.00028138; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-11 22:06:53
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-08-11 16:15:13 - 6.00010273
x-cbparentid: 19081122-6876-0000-0000-0000000A5649
Message-Id: <OF3B0A1F81.64227A30-ON00258453.007977BA-00258453.007977C8@notes.na.collabserv.com>
Subject: Re:  [PATCH v2 1/2] dt-bindings: Add ipsps1 as a trivial device
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-11_10:,,
 signatures=0
X-Proofpoint-Spam-Reason: safe
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Around 08/10/2019 04:54AM in some timezone, John Wang wrote:
>The ipsps1 is an Inspur Power System power supply unit
>
>Signed-off-by: John Wang <wangzqbj@inspur.com>
>---
>v2:
>    - No changes.
>---
> Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
> 1 file changed, 2 insertions(+)
>
>diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml
>b/Documentation/devicetree/bindings/trivial-devices.yaml
>index 747fd3f689dc..63960c7d949a 100644
>--- a/Documentation/devicetree/bindings/trivial-devices.yaml
>+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
>@@ -101,6 +101,8 @@ properties:
>             # Infineon TLV493D-A1B6 I2C 3D Magnetic Sensor
>           - infineon,tlv493d-a1b6
>             # Intersil ISL29028 Ambient Light and Proximity Sensor
>+          - inspur,ipsps1
>+            # Inspur Power System power supply unit version 1
>           - isil,isl29028

The comment describing your entry should go abvoe your entry, and 
your new entry (starting with the comment) should be before the 
Intersil entry comment line.


>             # Intersil ISL29030 Ambient Light and Proximity Sensor
>           - isil,isl29030
>-- 
>2.17.1
>
>

Milton

