Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 142B52832FA
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725974AbgJEJQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:16:21 -0400
Received: from smtp-fw-2101.amazon.com ([72.21.196.25]:35041 "EHLO
        smtp-fw-2101.amazon.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725891AbgJEJQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:16:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1601889379; x=1633425379;
  h=from:to:cc:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version:subject;
  bh=4HSr8S+O7AXXaYwdQnL7uUAb6hJD5nlQ1pJGP1wpGOI=;
  b=hOBgNXJYQ9lm9jMfqJVYl1rgaL03IyULcEy+knmdECtU28/csBapjF3w
   R7pBzN2RcGaU/HFYMO5SYoREJvKGABSW9IRIlY38H4ptp9yAHnkkdJ4ep
   gJ8YBVAuRkNVH33ieqFpQkWls5W/GMIvCRsko1yUDTU8rH+TIOwQCymo4
   U=;
X-IronPort-AV: E=Sophos;i="5.77,338,1596499200"; 
   d="scan'208";a="57756490"
Subject: Re: [PATCH v2 0/3] Arm CMN-600 PMU driver
Thread-Topic: [PATCH v2 0/3] Arm CMN-600 PMU driver
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com) ([10.43.8.2])
  by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP; 05 Oct 2020 09:16:18 +0000
Received: from EX13MTAUWB001.ant.amazon.com (iad12-ws-svc-p26-lb9-vlan3.iad.amazon.com [10.40.163.38])
        by email-inbound-relay-1d-37fd6b3d.us-east-1.amazon.com (Postfix) with ESMTPS id 046CC2831A4;
        Mon,  5 Oct 2020 09:16:16 +0000 (UTC)
Received: from EX13D02UWB003.ant.amazon.com (10.43.161.48) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 5 Oct 2020 09:16:15 +0000
Received: from EX13D01EUA001.ant.amazon.com (10.43.165.121) by
 EX13D02UWB003.ant.amazon.com (10.43.161.48) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Mon, 5 Oct 2020 09:16:14 +0000
Received: from EX13D01EUA001.ant.amazon.com ([10.43.165.121]) by
 EX13D01EUA001.ant.amazon.com ([10.43.165.121]) with mapi id 15.00.1497.006;
 Mon, 5 Oct 2020 09:16:13 +0000
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
        "james.yang@arm.com" <james.yang@arm.com>,
        "patrik.berglund@arm.com" <patrik.berglund@arm.com>
Thread-Index: AQHWjb/KSfZoqs0uw0+iavG4wYUX+KmJByEA
Date:   Mon, 5 Oct 2020 09:16:13 +0000
Message-ID: <55205AE5-EBBD-47F3-AA22-3B2A370CCF22@amazon.com>
References: <cover.1600357241.git.robin.murphy@arm.com>
In-Reply-To: <cover.1600357241.git.robin.murphy@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.164.31]
Content-Type: text/plain; charset="utf-8"
Content-ID: <E22AC0182D618D42A39A6CBFAE0FE29C@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCu+7v09uIDE4LzA5LzIwMjAsIDE2OjI5LCAiUm9iaW4gTXVycGh5IiA8cm9iaW4ubXVycGh5
QGFybS5jb20+IHdyb3RlOg0KICAgID4gSGVyZSdzIGFuIHVwZGF0ZSB3aXRoIHNvbWUgdmVyeSBt
aW5vciBjbGVhbnVwIHR3ZWFrcywgcGx1cyBhIHByb3Bvc2FsDQogICAgPiBmb3Igc29tZSBtb3Jl
IGluLWRlcHRoIGRlYnVnIGluZm9ybWF0aW9uLiBHaXZlbiB0aGF0IG5vYm9keSBzZWVtcyB0bw0K
ICAgID4gaGF2ZSBhbnkgc2lnbmlmaWNhbnQgY29tcGxhaW50cyBhYm91dCB0aGUgaW50ZXJmYWNl
LCBJIGFzc3VtZSB3ZSdyZSBhbGwNCiAgICA+IGhhcHB5IHRvIG1lcmdlIHRoZSBiYXNpYyBkcml2
ZXIgYXMtaXMgYW5kIGZpeCBhbnl0aGluZyBsYXRlciBpZiBuZWVkZWQuDQogICAgPg0KICAgID4g
Um9iaW4uDQoNCkFncmVlIHdpdGggbWVyZ2luZyB0aGUgZHJpdmVyIGFzLWlzLg0KVGVzdGVkIGJv
dGggdGhlIHVwZGF0ZWQgZHJpdmVyIGFuZCB0aGUgZGVidWdmcyBvbiBHcmF2aXRvbjIgKEFDUEkp
LiANCkJvdGggbWFwIGFuZCBpbml0aWFsIG51bWJlcnMgc2VlbSByaWdodC4NCg0KVGVzdGVkLWJ5
OiBUc2FoaSBaaWRlbmJlcmcgPHRzYWhlZUBhbWF6b24uY29tPg0KDQpNYXkgSSBvZmZlciBhIHNt
YWxsIGFkZGl0aW9uIHRvIHRoZSBkb2N1bWVudGF0aW9uPw0KU29tZXRoaW5nIGFsb25nIHRoZXNl
IGxpbmVzOg0KDQotLS0gYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3BlcmYvYXJtLWNtbi5y
c3QNCisrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9hcm0tY21uLnJzdA0KQEAg
LTQxLDggKzQxLDE0IEBAIHNwZWNpZmllZCBieSAib2NjdXBpZCIuDQogDQogQnkgZGVmYXVsdCBl
YWNoIGV2ZW50IHByb3ZpZGVzIGFuIGFnZ3JlZ2F0ZSBjb3VudCBvdmVyIGFsbCBub2RlcyBvZiB0
aGUNCiBnaXZlbiB0eXBlLiBUbyB0YXJnZXQgYSBzcGVjaWZpYyBub2RlLCAiYnlub2RlaWQiIG11
c3QgYmUgc2V0IHRvIDEgYW5kDQotIm5vZGVpZCIgdG8gdGhlIGFwcHJvcHJpYXRlIHZhbHVlIGRl
cml2ZWQgZnJvbSB0aGUgQ01OIGNvbmZpZ3VyYXRpb24NCi0oYXMgZGVmaW5lZCBpbiB0aGUgIk5v
ZGUgSUQgTWFwcGluZyIgc2VjdGlvbiBvZiB0aGUgVFJNKS4NCisibm9kZWlkIiB0byB0aGUgYXBw
cm9wcmlhdGUgdmFsdWUgZGVyaXZlZCBmcm9tIHRoZSBDTU4gY29uZmlndXJhdGlvbi4NCisNCitU
aGUgQ01OIG1hcCBpcyBhdmFpbGFibGUgaW4gL3N5cy9rZXJuZWwvZGVidWcvYXJtLWNtbi9tYXAu
DQorQSBub2RlaWQgY291bGQgYmUgY2FsY3VsYXRlZCB3aXRoIHRoaXMgZm9ybXVsYWU6DQorICBu
b2RlLWlkID0gZCB8IChwIDw8IDIpIHwgKHkgPDwgMykgfCAoeCA8PCAoMyArIHh5Yml0cykpDQor
d2hlcmU6DQorICB4LHkscCxkIGFyZSBub2RlIGxvY2F0aW9uIGFzIGNhbiBiZSBzZWVuIGluIHRo
ZSBtYXANCisgIHh5Yml0cyBpcyAyIGZvciBtZXNoZXMgPD0gMioyLCBhbmQgMyBvdGhlcndpc2Uu
DQogDQogV2F0Y2hwb2ludHMNCiAtLS0tLS0tLS0tLQ0KDQo=
