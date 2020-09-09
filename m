Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4066A262BEC
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 11:34:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727782AbgIIJeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 05:34:25 -0400
Received: from smtp-fw-9102.amazon.com ([207.171.184.29]:15120 "EHLO
        smtp-fw-9102.amazon.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726293AbgIIJeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 05:34:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1599644064; x=1631180064;
  h=from:to:cc:subject:date:message-id:content-id:
   content-transfer-encoding:mime-version;
  bh=jEseScoMAkD/szj52E67aJpb7QutvR06sVngDtZChg4=;
  b=LjBptRL5dN6wlMIJYRk0q50jFHGtKA9x/eL9tgUoSBPt7nuF9vyqSK+1
   OtHCQ2SAlK6wmGIOs5KtM7WDwtP0D13/n2QlW4dMs9tmMNI8vGaI2p+PZ
   AI5nYRLYVZMOVxH0KHtEdb+mmm4ItdeuBWroeraFZVcxVXkN0AJMwK2sN
   M=;
X-IronPort-AV: E=Sophos;i="5.76,409,1592870400"; 
   d="scan'208";a="74732804"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO email-inbound-relay-2b-55156cd4.us-west-2.amazon.com) ([10.47.23.38])
  by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP; 09 Sep 2020 09:34:21 +0000
Received: from EX13MTAUWC002.ant.amazon.com (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
        by email-inbound-relay-2b-55156cd4.us-west-2.amazon.com (Postfix) with ESMTPS id 029A8A1E2F;
        Wed,  9 Sep 2020 09:34:19 +0000 (UTC)
Received: from EX13D02UWC003.ant.amazon.com (10.43.162.199) by
 EX13MTAUWC002.ant.amazon.com (10.43.162.240) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 9 Sep 2020 09:34:19 +0000
Received: from EX13D01EUA001.ant.amazon.com (10.43.165.121) by
 EX13D02UWC003.ant.amazon.com (10.43.162.199) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 9 Sep 2020 09:34:18 +0000
Received: from EX13D01EUA001.ant.amazon.com ([10.43.165.121]) by
 EX13D01EUA001.ant.amazon.com ([10.43.165.121]) with mapi id 15.00.1497.006;
 Wed, 9 Sep 2020 09:34:17 +0000
From:   "Zidenberg, Tsahi" <tsahee@amazon.com>
To:     Robin Murphy <robin.murphy@arm.com>,
        "will@kernel.org" <will@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Saidi, Ali" <alisaidi@amazon.com>,
        "harb@amperecomputing.com" <harb@amperecomputing.com>,
        "tuanphan@os.amperecomputing.com" <tuanphan@os.amperecomputing.com>,
        "james.yang@arm.com" <james.yang@arm.com>
Subject: Re: [PATCH 0/2] Arm CMN-600 PMU driver
Thread-Topic: [PATCH 0/2] Arm CMN-600 PMU driver
Thread-Index: AQHWhoxjbqJk84D/L0ylDyzTsnwUPg==
Date:   Wed, 9 Sep 2020 09:34:16 +0000
Message-ID: <09BE24FF-DF48-49C5-AAC4-669372276200@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.165.102]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E76ED62CE3D104499A0710D96365B2D@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQrvu79PbiAwNS8wOC8yMDIwLCAxNTo1NywgIlJvYmluIE11cnBoeSIgPHJvYmluLm11cnBoeUBh
cm0uY29tPiB3cm90ZToNCiAgICA+IEF0IGxvbmcgbGFzdCwgaGVyZSdzIGFuIGluaXRpYWwgY3V0
IG9mIHRoZSBDTU4gUE1VIGRyaXZlciB0aGF0J3MgYmVlbg0KICAgID4gZmVzdGVyaW5nIGluIG9u
LWFuZC1vZmYgZGV2ZWxvcG1lbnQgZm9yIHllYXJzLiBJdCBzaG91bGQgYmUgZnVuY3Rpb25hbGx5
DQogICAgPiBjb21wbGV0ZSBub3csIGFsdGhvdWdoIHRoZXJlIGlzIHN0aWxsIHNjb3BlIGZvciBp
bXByb3ZpbmcgdGhlIGN1cnJlbnQNCiAgICA+IGltcGxlbWVudGF0aW9uIChlLmcuIHdhdGNocG9p
bnQgcmVnaXN0ZXIgYWxsb2NhdGlvbiBjb3VsZCBiZSBjbGV2ZXJlcikuDQoNCkJvb3RlZCBvbiBn
cmF2aXRvbjIgKHVzaW5nIEFDUEkpLiBDYWNoZS1maWxsIGNvdW50ZXIgdmFsdWUgKGJvdGggZ2Vu
ZXJhbCBhbmQNCmJ5bm9kZWlkKSByZXNwb25kcyBhcyBleHBlY3RlZCB0byBtZW1vcnkgcHJlc3N1
cmUgZnJvbSB1c2VyIHByb2Nlc3Nlcy4NCg0KVGVzdGVkLWJ5OiBUc2FoaSBaaWRlbmJlcmcgPHRz
YWhlZUBhbWF6b24uY29tPg0KDQogICA+IE9mIHBhcnRpY3VsYXIgaW50ZXJlc3QgYXQgdGhpcyBw
b2ludCBpcyB0aGUgdXNlciBpbnRlcmZhY2UgLSBpcyBpdA0KICAgPiBzdWZmaWNpZW50bHkgY29t
cGxldGUgYW5kIHVzZWZ1bD8gSXMgdGhlcmUgYW55IG5lZWQgZm9yIGEgdGhpcmQgZXZlbnQNCiAg
ID4gdGFyZ2V0aW5nIG1ldGhvZCBpbiBiZXR3ZWVuICJzaW5nbGUgbm9kZSBJRCIgYW5kICJhbGwg
bm9kZXMiPw0KDQpUaGUgb25lIHRoaW5nIEknbSBtaXNzaW5nIChvciBkaWRuJ3QgZmluZCkgaXMg
YSB3YXkgZm9yIHRoZSB1c2VyIHRvIGRldGVybWluZQ0KdGhlIGxpc3Qgb2YgcmVsZXZhbnQgbm9k
ZSBpZHMgZm9yIGVhY2ggbm9kZSB0eXBlIG9yIGNvdW50ZXIuDQpVc2luZyBhIHdyb25nIG5vZGVp
ZCBqdXN0IGdhdmUgbWUgPG5vdCBzdXBwb3J0ZWQ+IGFzIGEgY291bnRlciB2YWx1ZS4NCkkgZG9u
J3QgdGhpbmsgdGhhdCBpdCdzIHJlcXVpcmVkIGZvciBhIGZpcnN0IHZlcnNpb24sIHRob3VnaC4N
Cg0KLS0tDQpUaGFuayB5b3UhDQpUc2FoaQ0KDQo=
