Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CF9328EDBD
	for <lists+devicetree@lfdr.de>; Thu, 15 Oct 2020 09:31:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727239AbgJOHb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Oct 2020 03:31:27 -0400
Received: from smtp-fw-9101.amazon.com ([207.171.184.25]:36406 "EHLO
        smtp-fw-9101.amazon.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726103AbgJOHb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Oct 2020 03:31:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1602747086; x=1634283086;
  h=from:to:cc:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version:subject;
  bh=EyMrvr2wjsDuegHRZI0bYpbALmJB9/oJIOC8Y5xt9Lg=;
  b=pWflkCcJmrjY2rhPGf86/IoFca5WP6HKeOKquf7HwI/Y+Fl6urSMX3XL
   xJZtRxjgFE+vGjGxajxHssZoPW6PNkEHNivlI2SxTFRXn81Xpti9HzNvZ
   WvFa7EzZou7pITqJI2xbTbavhGVcVweXoox+rSZ/0Bjzof+92XKNoy+aY
   s=;
X-IronPort-AV: E=Sophos;i="5.77,378,1596499200"; 
   d="scan'208";a="76623054"
Subject: Re: [PATCH v2 0/3] Arm CMN-600 PMU driver
Thread-Topic: [PATCH v2 0/3] Arm CMN-600 PMU driver
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO email-inbound-relay-2b-8cc5d68b.us-west-2.amazon.com) ([10.47.23.38])
  by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP; 15 Oct 2020 07:31:09 +0000
Received: from EX13MTAUWC002.ant.amazon.com (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
        by email-inbound-relay-2b-8cc5d68b.us-west-2.amazon.com (Postfix) with ESMTPS id E129FA1F3A;
        Thu, 15 Oct 2020 07:26:08 +0000 (UTC)
Received: from EX13D02UWC002.ant.amazon.com (10.43.162.6) by
 EX13MTAUWC002.ant.amazon.com (10.43.162.240) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 15 Oct 2020 07:26:08 +0000
Received: from EX13D01EUA001.ant.amazon.com (10.43.165.121) by
 EX13D02UWC002.ant.amazon.com (10.43.162.6) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 15 Oct 2020 07:26:07 +0000
Received: from EX13D01EUA001.ant.amazon.com ([10.43.165.121]) by
 EX13D01EUA001.ant.amazon.com ([10.43.165.121]) with mapi id 15.00.1497.006;
 Thu, 15 Oct 2020 07:26:06 +0000
From:   "Zidenberg, Tsahi" <tsahee@amazon.com>
To:     Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
CC:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Saidi, Ali" <alisaidi@amazon.com>,
        "harb@amperecomputing.com" <harb@amperecomputing.com>,
        "tuanphan@os.amperecomputing.com" <tuanphan@os.amperecomputing.com>,
        "james.yang@arm.com" <james.yang@arm.com>,
        "patrik.berglund@arm.com" <patrik.berglund@arm.com>
Thread-Index: AQHWjb/KSfZoqs0uw0+iavG4wYUX+KmJByEA///f4oCADoxegIABLEsA
Date:   Thu, 15 Oct 2020 07:26:06 +0000
Message-ID: <376E9048-6702-4146-822E-FCF992661B85@amazon.com>
References: <cover.1600357241.git.robin.murphy@arm.com>
 <55205AE5-EBBD-47F3-AA22-3B2A370CCF22@amazon.com>
 <20201005102115.GA23702@willie-the-truck>
 <b86a8e7e-4def-3cd0-d2c1-b9560304cf15@arm.com>
In-Reply-To: <b86a8e7e-4def-3cd0-d2c1-b9560304cf15@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.165.153]
Content-Type: text/plain; charset="utf-8"
Content-ID: <BE6F0A11A0C35E4997A731AD1DC615CE@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCu+7v09uIDE0LzEwLzIwMjAsIDE5OjMxLCAiUm9iaW4gTXVycGh5IiA8cm9iaW4ubXVycGh5
QGFybS5jb20+IHdyb3RlOg0KICAgID4gT24gTW9uLCBPY3QgMDUsIDIwMjAgYXQgMDk6MTY6MTNB
TSArMDAwMCwgWmlkZW5iZXJnLCBUc2FoaSB3cm90ZToNCiAgICA+PiAgIEJ5IGRlZmF1bHQgZWFj
aCBldmVudCBwcm92aWRlcyBhbiBhZ2dyZWdhdGUgY291bnQgb3ZlciBhbGwgbm9kZXMgb2YgdGhl
DQogICAgPj4gICBnaXZlbiB0eXBlLiBUbyB0YXJnZXQgYSBzcGVjaWZpYyBub2RlLCAiYnlub2Rl
aWQiIG11c3QgYmUgc2V0IHRvIDEgYW5kDQogICAgPj4gLSJub2RlaWQiIHRvIHRoZSBhcHByb3By
aWF0ZSB2YWx1ZSBkZXJpdmVkIGZyb20gdGhlIENNTiBjb25maWd1cmF0aW9uDQogICAgPj4gLShh
cyBkZWZpbmVkIGluIHRoZSAiTm9kZSBJRCBNYXBwaW5nIiBzZWN0aW9uIG9mIHRoZSBUUk0pLg0K
ICAgID4+ICsibm9kZWlkIiB0byB0aGUgYXBwcm9wcmlhdGUgdmFsdWUgZGVyaXZlZCBmcm9tIHRo
ZSBDTU4gY29uZmlndXJhdGlvbi4NCiAgICA+PiArDQogICAgPj4gK1RoZSBDTU4gbWFwIGlzIGF2
YWlsYWJsZSBpbiAvc3lzL2tlcm5lbC9kZWJ1Zy9hcm0tY21uL21hcC4NCiAgICA+PiArQSBub2Rl
aWQgY291bGQgYmUgY2FsY3VsYXRlZCB3aXRoIHRoaXMgZm9ybXVsYWU6DQogICAgPj4gKyAgbm9k
ZS1pZCA9IGQgfCAocCA8PCAyKSB8ICh5IDw8IDMpIHwgKHggPDwgKDMgKyB4eWJpdHMpKQ0KICAg
ID4+ICt3aGVyZToNCiAgICA+PiArICB4LHkscCxkIGFyZSBub2RlIGxvY2F0aW9uIGFzIGNhbiBi
ZSBzZWVuIGluIHRoZSBtYXANCiAgICA+PiArICB4eWJpdHMgaXMgMiBmb3IgbWVzaGVzIDw9IDIq
MiwgYW5kIDMgb3RoZXJ3aXNlLg0KDQogICAgPiBOb3RlIHRoYXQgSSBkaXNhZ3JlZSBzdHJvbmds
eSB3aXRoIHJlbW92aW5nIHRoZSByZWZlcmVuY2UgdG8gdGhlDQogICAgPiBkb2N1bWVudGF0aW9u
IHRoYXQgY2Fub25pY2FsbHkgZGVmaW5lcyB0aGUgbm9kZSBJRCBmb3JtYXQsIGVzcGVjaWFsbHkN
CiAgICA+IHdoZW4gdGhlIHByb3Bvc2FsIGlzIHRvIHJlcGxhY2UgaXQgd2l0aCBhIGhhcmRlci10
by1yZWFkIGRlZmluaXRpb24gdGhhdA0KICAgID4gaXMgYWxzbyB3cm9uZyA7KQ0KDQpXb3VsZCBi
ZSBoYXBweSB0byBiZSBjb3JyZWN0ZWQgOikgDQoNCiAgICA+IElmIHRoZXJlJ3MgYWN0dWFsbHkg
aW50ZXJlc3QgaW4gdXNpbmcgdGhlIGNvb3JkaW5hdGUgZm9ybWF0IHJhdGhlciB0aGFuDQogICAg
PiBqdXN0IHdob2xlIElEIHZhbHVlcywgdGhlbiB3ZSBzaG91bGQgZ2VuZXJhdGUgZm9ybWF0IGF0
dHJpYnV0ZXMgdGhhdA0KICAgID4gb3ZlcmxheSB0aGUgYXBwcm9wcmlhdGUgc2VjdGlvbnMgb2Yg
dGhlIG5vZGVpZCBmaWVsZC4gSSBoYXZlbid0IHRyaWVkIHRvDQogICAgPiBpbXBsZW1lbnQgdGhh
dCBzbyBmYXIgc2luY2UgaXQncyBub3QgZW50aXJlbHkgdHJpdmlhbCBhbmQgSSB3YXNuJ3Qgc3Vy
ZQ0KICAgID4gaWYgYW55b25lIHdvdWxkIGNhcmUuDQoNCkkgYWdyZWUgdGhhdCBvdmVyIDkwJSBv
ZiB0aGUgd29yayB3aXRoIHRoZSBjb3VudGVycyBzaG91bGQgYmUgd2l0aCBhZ2dyZWdhdGUNCnZh
bHVlcyB0aGF0IHRoZSBkcml2ZXIgYWxyZWFkeSBoYW5kbGVzIHdlbGwgYnkgZGVmYXVsdC4NCkF0
IHRoZSBuZXh0IGxldmVsLCB0aGVyZSBtaWdodCBiZSBhIGxvdCB0byBnYWluIGZyb20ganVzdCB1
bmRlcnN0YW5kaW5nIGlmIHRoZQ0KY291bnRlciBpbiBxdWVzdGlvbiBpcyBnb2luZyB1cCBhY3Jv
c3MgdGhlIGJvYXJkLCBvciBqdXN0IGZvciBhIHNwZWNpZmljIG5vZGUuDQpBcmUgdGhlcmUgYSBs
b3Qgb2YgSE5GIGNhY2hlIG1pc3NlcyBpbiB0aGUgc3lzdGVtLCBvciBmcm9tIG9uZSBzcGVjaWZp
YyBITkY/DQpUbyBhbnN3ZXIgdGhhdCBxdWVzdGlvbiwgdGhlIGRldmVsb3BlciBkb2Vzbid0IG5l
ZWQgdG8gaG9sZCB0aGUgU09DIFNQRUMsDQpqdXN0IHRvIGhhdmUgdGhlIGxpc3Qgb2YgcmVsZXZh
bnQgbm9kZS1pZHMgcGVyIHR5cGUvY291bnRlci4NCkkgcmVhbGx5IGxpa2UgdGhlIGFybS1jbW4v
bWFwIHlvdSBjcmVhdGVkLiBUaGVyZSBpcyBzdGlsbCBhIHNtYWxsIG1pc3NpbmcgbGluaw0KYmV0
d2VlbiB0aGF0IG1hcCB0byByZWxldmFudCBub2RlLWlkcyBmb3IgdGhlIGFib3ZlLiBJbiBteSBv
cGluaW9uLCBsb29raW5nDQphdCBzcGVjaWZpYyBub2RlLWlkcyB3b3VsZCBiZSBhIHJhcmUgZW5v
dWdoIHRhc2ssIHJlcXVpcmluZyBlbm91Z2ggZXhwZXJ0aXNlLA0KdGhhdCBJIGFtIGNvbWZvcnRh
YmxlIHB1dHRpbmcgYSBmb3JtdWxhZSBpbiBkb2N1bWVudGF0aW9uIHdpdGhvdXQgYWN0dWFsbHkN
Cm1vZGlmeWluZyBBUEksIGF0IGxlYXN0IGF0IHRoaXMgc3RhZ2UuDQoNClRoYW5rIHlvdSENClRz
YWhpLg0KDQo=
