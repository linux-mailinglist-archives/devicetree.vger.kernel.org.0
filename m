Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE6144169A8
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 03:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243805AbhIXBym (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 21:54:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243795AbhIXBym (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 21:54:42 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BD35C061574
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 18:53:10 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id x2so8740798ilm.2
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 18:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=dgpwPCQznEmVXGZRT9a+ot3RVGNTTHbl31G3nps7wKQ=;
        b=arvsYTBmsr+YHmga28r4yVzGHN9o+5321t2FfClFRnyeiZ1gqD6ESM7fU0qmoTl5yi
         zE8enuduoyy9yTxddi6w7hFOaJdxmNTlrg28DQ0dyRcrn7TtLz4Jo52S5YWpWxg3k/QW
         j4SJHYjhhzR2DHwiAuADb9cKNdNY69Zi7z1hcpUC6wDqHMcSAdSq8KUhA2HdP5bEYV2M
         kvmgqtQc9WvZGpMF6rnxDRABBQm/97fkylMBlpQp4RmJWh6uqReZaqvw8mrJmY26l8jm
         w5XH4hNdJuaBhLBsX2/6agkOHAB6Jq+xXpgNr2zRncOorkUZupDj9p0ZVTxCfLSUcYei
         4Inw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=dgpwPCQznEmVXGZRT9a+ot3RVGNTTHbl31G3nps7wKQ=;
        b=Kgw+6/RrrRRyfjm4TDoIBKyk24HopM/4ersEgFYHDe3mWmpJr+YBNvB3O9e4OFNcIC
         g0CXNbacssNmVZingRudK3YgA0Tgjr1Y0qfY0HFWPs1VnCLv4jmezXbBjguHOtBC08d5
         v4AlOQNXcidyyZbkCsUt/KWMu8Y4U+rbSdmRkZ13nP/UrOOEV/2zr/NdmHJJEofW1eTL
         go9Eng5Vh0w6YBYBvpo4/6IBqO2Px7TjdYwnLCzq94rbCFOHDzEZWRiDmiEaY6XsTGo9
         0HXw/D+R5ArXTqA+b0ntgjcqV3dYRSFMPFvD6SXbrmqdCduySgkf+OACZp+X6Af+G4DD
         8XeQ==
X-Gm-Message-State: AOAM533iA2MlHj9QQPnmd/8Ktn6OTi8KKYcaTahFWyRl+ogQcgtPM2Oz
        L+wvzFo9aSrXtkRign+FN1804NtF3KpPoafnbpY=
X-Google-Smtp-Source: ABdhPJzXRQnFdXW0Z/GucsAg/vvBd+iIGFFcz0O2uDPREIhpnBEk3nSC9Q+GOqGrTpCFwVhOGeEtymnrpo8Su9NYbo4=
X-Received: by 2002:a92:1a07:: with SMTP id a7mr5350955ila.196.1632448389128;
 Thu, 23 Sep 2021 18:53:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:b281:0:0:0:0:0 with HTTP; Thu, 23 Sep 2021 18:53:05
 -0700 (PDT)
Reply-To: michaelrachid7@gmail.com
From:   Michael Rachid <felixfernando.6500@gmail.com>
Date:   Fri, 24 Sep 2021 02:53:05 +0100
Message-ID: <CAA6riO3+mHzCfz=wgtsTYsnEcCqOy=+QZ8P5vYnDS66F5Zj4pA@mail.gmail.com>
Subject: =?UTF-8?B?7KCc7JWIIGplYW4vUHJvcG9zYWw=?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

7Lmc6rWs7JeQ6rKMLA0KDQrrgpjripQg64u57Iug6rO8IO2VqOq7mCDsspjrpqztlZjqs6Ag7Iu2
7J2AIOyCrOyXhSDsoJzslYjsl5Ag64yA7ZW0IOyVjOumrOq4sCDsnITtlbQg6riA7J2EIOyUgeuL
iOuLpC4NCjXsspzrp4wg64us65+s6rCAIO2IrOyeheuQqeuLiOuLpC4g66qo65OgIOqyg+ydtCDt
lanrspXsoIHsnbTqs6Ag7JyE7ZeY7ZWY7KeAIOyViuycvOuLiCDslYjsi6ztlZjsi63si5zsmKQu
DQrqtIDsi6zsnYQg7ZGc7Iuc7ZW0IOyjvOyLreyLnOyYpC4NCg0K66eI7J207YG0IOudvOyLnOuT
nC4NCg0KY2hpbmd1ZWdlLA0KDQpuYW5ldW4gZGFuZ3Npbmd3YSBoYW1ra2UgY2hlb2xpaGFnbyBz
aXAtZXVuIHNhLWVvYiBqZWFuLWUgZGFlaGFlDQphbGxpZ2kgd2loYWUgZ2V1bC1ldWwgc3NldWJu
aWRhLg0KNWNoZW9ubWFuIGRhbGxlb2dhIHR1LWliZG9lYm5pZGEuIG1vZGV1biBnZW9zLWkgaGFi
YmVvYmplb2ctaWdvDQp3aWhlb21oYWppIGFuaC1ldW5pIGFuc2ltaGFzaWJzaW8uDQpnd2Fuc2lt
LWV1bCBweW9zaWhhZSBqdXNpYnNpby4NCg0KbWFpa2V1bCBsYXNpZGV1Lg0KDQoNCkRlYXIgZnJp
ZW5kLA0KDQpJIHdyaXRlIHRvIGluZm9ybSB5b3UgYWJvdXQgYSBidXNpbmVzcyBwcm9wb3NhbCBJ
IGhhdmUgd2hpY2ggSSB3b3VsZA0KbGlrZSB0byBoYW5kbGUgd2l0aCB5b3UuDQpGaWZ0eSBtaWxs
aW9uIGRvbGxhcnMgaXMgaW52b2x2ZWQuIEJlIHJlc3QgYXNzdXJlZCB0aGF0IGV2ZXJ5dGhpbmcg
aXMNCmxlZ2FsIGFuZCByaXNrIGZyZWUuDQpLaW5kbHkgaW5kaWNhdGUgeW91ciBpbnRlcmVzdC4N
Cg0KTWljaGFlbCBSYWNoaWQuDQo=
