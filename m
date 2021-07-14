Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C6293C8167
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 11:21:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238647AbhGNJX4 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 14 Jul 2021 05:23:56 -0400
Received: from mx-relay88-hz1.antispameurope.com ([94.100.133.254]:37889 "EHLO
        mx-relay88-hz1.antispameurope.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238544AbhGNJX4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 14 Jul 2021 05:23:56 -0400
X-Greylist: delayed 334 seconds by postgrey-1.27 at vger.kernel.org; Wed, 14 Jul 2021 05:23:56 EDT
Received: from unknown ([185.80.187.2]) by mx-relay88-hz1.antispameurope.com;
 Wed, 14 Jul 2021 11:15:28 +0200
Received: from grp-ex01.Vivavis.int (192.168.17.53) by grp-ex01.Vivavis.int
 (192.168.17.53) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.858.12; Wed, 14 Jul
 2021 11:15:23 +0200
Received: from grp-ex01.Vivavis.int ([fe80::b524:e95:f072:33b7]) by
 grp-ex01.Vivavis.int ([fe80::b524:e95:f072:33b7%9]) with mapi id
 15.02.0858.012; Wed, 14 Jul 2021 11:15:23 +0200
From:   "embedded (VIVAVIS AG)" <embedded@vivavis.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: AW: Voltage and current regulator: usage of 'regulators' parent node
 in device tree
Thread-Topic: Voltage and current regulator: usage of 'regulators' parent node
 in device tree
Thread-Index: Addz0fY74DQKBToLRVyPKgu6Ziqk0AEvg3zg
Date:   Wed, 14 Jul 2021 09:15:23 +0000
Message-ID: <240399c9c4d4465d9b816138f08a11e8@vivavis.com>
References: <fb0fc8200b14443da86cae5acf5441cb@vivavis.com>
In-Reply-To: <fb0fc8200b14443da86cae5acf5441cb@vivavis.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.7.31]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 61419075-592b-4c8d-b7a0-bf1d145a8b8e
x-c2processedorg: 2f045ba3-9b34-4118-a5bd-6c10d5957477
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-cloud-security-sender: embedded@vivavis.com
X-cloud-security-recipient: devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay88-hz1.antispameurope.com with B4462720627
X-cloud-security-connect: unknown[185.80.187.2], TLS=1, IP=185.80.187.2
X-cloud-security-Digest: 9df0bd74075a8c4098f1c128bfdd3e15
X-cloud-security: scantime:1.920
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> I see a lot of Device trees wrapping the regulator nodes within a parent node
> like this
>
> regulators {
>    compatible = "simple-bus";
>    #address-cells = <1>;
>    #size-cells = <0>;
>    reg_p3v3: regulator@0 {
>        compatible = "regulator-fixed";
>        [...]
>        regulator-always-on;
>    };
>    [...]
>
> Contrary to that, patches exist removing the 'regulators' node, because the 'simple-bus'
> doesn't really exist in hardware. Unfortunately, the documentation is unclear about
> wrapping regulator nodes like shown above.
>
> Should I avoid the parent 'regulators' node and why?
>
> Is the given naming schema in fixed-regulator.yaml best practice to follow?
>
>    reg_xyz: regulator-xyz {
>      compatible = "regulator-fixed";
>      regulator-name = "xyz";
>
> Thank you for clarification.
>
> Carsten Stelling

Possibly, the wrong list or recipients?
Any thoughts on this topic?

Thank you for your help.

Carsten
