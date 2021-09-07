Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4330E402DAC
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 19:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345633AbhIGRWI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 13:22:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345581AbhIGRWH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 13:22:07 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A15C061757
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 10:21:01 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id j13so14912394edv.13
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 10:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=AQSygVQR7X2p3idaY2kblM6hHvDCfsOME2h6aqCtJ1E=;
        b=UL+t7XCLx2+/jrAzUmJwIOttRlnz+9V4+ijKx6anhLGJzZaT/M7bq9od55rnyhSjEP
         dsPxtE2ULGumwCTec300OB3md9GQFmS7jOVkB+v3Es9KHSz5wO1gJLRhgdf3UjsC3+Ne
         qzyD5vUnipyD0sRE91dK9q/wPgfcjfdHVMR36mpvV7mnk+KTCNBl/BQw9b3AL0u6dane
         2tqU08j7LKtrp5EwMSHACcGcMpm3K0s4MlhS8t27Iv7l+/A6q2gWZr8qskTwVTyZ4Zg4
         A+QOwQogDBPWCqEVwWVAVtdOG9J/3xKKLKjhcerX5jjkqhRbEAYEpamyCa/EkcjmsMPR
         R4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=AQSygVQR7X2p3idaY2kblM6hHvDCfsOME2h6aqCtJ1E=;
        b=Lm9OKIXaTRbfud5LGUfikoVqduVZJWI4pVD6XXuNZAAVDUXr462uck0K8qyBpMJ2eW
         08UJGewcNjSXEGBQZQ/QxMwb6LcCeGGtGdIj5naqrIWgNnOk1Yu3p8tRYY0nzef2BotN
         I7lI6hObcdC6mpsYOZXzWnMF7roN9tuxXkcU2XAQTUGXxHbL8vtsCLcV/hRRxhFJA/AV
         FuziuCOroAsLPAYMwU/t87ar/pUl1lrTdW6M+wfsffZkOX9CQnCopCYr0IQgs8cjyXcR
         BUfdDgMZf3kakhOltJFIzyqWpOhaFqURzpN2FHspwa0nXVfl/THp9/5zOpMHuUXn/CpO
         Jz6w==
X-Gm-Message-State: AOAM533+Qgq3ZI1OaWbmX5snqeRmWeakyD65edqsAs5saEIl5c/DPxOK
        UpcANH6FERqvbstBfL5bNskC+iskX/d6/bAnlbc=
X-Google-Smtp-Source: ABdhPJynvRlMF+ljKhoBEFZZ0fQxOlOs/kZe0fJ8iel5cmGHZqaw4fpzo5AGUkph3w33P+zvrmBRPirniC/oQ2Tk9jM=
X-Received: by 2002:aa7:d68b:: with SMTP id d11mr565175edr.243.1631035259648;
 Tue, 07 Sep 2021 10:20:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6400:5b8d:0:0:0:0 with HTTP; Tue, 7 Sep 2021 10:20:58
 -0700 (PDT)
Reply-To: shanwhayden424@gmail.com
From:   shawn hayden <sebastiansuarez476@gmail.com>
Date:   Tue, 7 Sep 2021 18:20:58 +0100
Message-ID: <CANzfXYskBybGM3ZjM020NrL16Qs444jZ-ZftUUMREtJKuH1K0g@mail.gmail.com>
Subject: =?UTF-8?B?Q2hhcml0eS/UstWh1oDVpdWj1bjWgNWu1bjWgtWp1bXVuNaC1bYgQmFyZWdvcnRzdXQ=?=
        =?UTF-8?B?4oCZeXVu?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

1Y3Vq9aA1aXVrNWrINWo1bbVr9Wl1oAsDQoNCtS11b0g1LHVvtW91b/WgNWh1azVq9Wh1bXVqyDW
hNWh1bLVodaE1aHWgdWrINWl1bQsINWh1brWgNW41oLVtCDVpdW0INSx1YTVhiAt1bjWgtW0INaH
INW81avVpdWs1anVuNaAINWl1bQgMzUg1b/VodaA1b7VoQ0K1aHVt9Wt1aHVv9Wh1bbWhNWh1bXV
q9W2INaD1bjWgNWx1bjVvg0K1oPVuNaA1bHVodW81bjWgtWp1bXVuNaC1bY6INWO1aXWgNW71aXW
gNW9INW+1aHWgNWh1a/VvtWl1oHVqyBDb3ZpZC0xOSDVvtWr1oDVuNaC1b3VuNW+INaHINWk1oDV
oSDVutWh1b/Vs9Wh1bzVuNW+DQrVq9W0INW/1aHWgNWr1oTVqywg1aXVvSDVudWl1bQg1a/VodaA
1a7VuNaC1bQsINW41oAg1a/VodaA1bjVsiDVpdW0INWj1bjVtdWh1b/Wh9Wl1awg1b3VoTog1LXV
vSDVqdWp1b7VodWu1bbVqyDVv9Wh1a8g1aXVtCDVpdWy1aXVrCDVoQ0K1bTVqyDWhNWh1bbVqyDW
hdaALCDWhyDVpdW9INW51aXVtCDVr9Wh1oDVuNWyINWv1bXVodW21oTVvSDVo9W21aXVrCDWg9W4
1bLVuNW+OiDUtdW9INWv1aHWgNW41bIg1aXVtCA1NSDVtNWr1azVq9W41bYNCtSx1YTVhiDVpNW4
1azVodaAINW21b7Vq9aA1aHVotWl1oDVpdWsINWi1aHWgNWl1aPVuNaA1a7VuNaC1anVtdWh1bbV
qCwNCtWw1aHVv9Wv1aHVutWl1b0g1aHVstaE1aHVv9W21aXWgNWr1bYg1oXVo9W21aXVrNW41oIg
1bDVodW01aHWgDog1LHVttaB1bXVodWsINW/1aHWgNWrINWl1b0g1a/VuNaA1oHWgNWl1oHVqyDV
r9W21bjVu9W9DQrWhNWh1bLWgdWv1aXVstWr1oEsINaHINWr1bQg1bTVq9Wh1a8g1bjWgNWk1avV
tiDWhNaA1bjVttWr1a8g1bDVq9W+1aHVttWkINWnDQrVrdWh1bLVodW01bjVrCwg1bjVviDVtNW9
1a3VpdaBINWr1bQg1b/WgNWh1bTVodWk1oDVodWuINWi1bjVrNW41oAg1bTVq9W71bjWgdW21aXW
gNWoOg0K1YDVq9W+1aHVttWkINWw1avVvtWh1bbVpCDVodW21a/VuNWy1bbVuNaC1bQg1brVodW8
1a/VodWuINWdINWh1bzVodW21oEg1aPVuNW11aHVv9aH1bTVodW2INWw1bjWgtW11b0g1bjWgtW2
1aXVttWh1azVuNaCLCDVtNWh1bLVqdW41oLVtCDVpdW0DQrVpNW41oIg1avVttWxINaF1aPVttWl
1oHVq9aAINWv1aHVv9Wh1oDVpdWsINWr1bQg1b7VpdaA1bvVq9W2INaB1aHVttWv1bjWgtWp1bXV
uNaC1bbVqDog1Y3VoSDWgdWh1bbVr9W41oLVqdW11bjWgtW2INWnLCDVuNaA1agNCtWv1a7VodW8
1aHVtdWrINWr1bbVsQ0K1bjWgNW61aXVvSDVodWy1aHVudWh1bbWhCDUsdW91b/VrtW41oLVtiDV
q9W0INWw1bjVo9W41oIg1ocg1avVtCDVtNWl1bLWhNWl1oDVqyDVqdW41bLVuNaC1anVtdWh1bYg
1bDVodW01aHWgDog1LXVqdWlIOKAi+KAi9W61aHVv9aA1aHVvdW/INWl1oQNCtaHINW61aHVv9aA
1aHVvdW/INWnINaF1aPVttWl1awsINWt1bbVpNaA1bjWgtW0INWl1bQg1brVodW/1aHVvdWt1aHV
ttWl1oQg1avVttWxLCDWhyDVpdW9INWx1aXVpiDVtNWh1bbWgNWh1bTVodW91bbVpdaADQrVr9W/
1aHVtDog1LXVvSDVo9Wr1b/VpdW0LCDVuNaAINWl1b0NCtWv1aHWgNW41bIg1acg1b7VvdW/1aHV
sNWl1awg1oTVpdWmOiDVldWj1bbVpdaB1aXWhCwg1a3VttWk1oDVuNaC1bQg1aXVtC4NCg0K1YDV
odaA1aPVodW21oTVttWl1oDVuNW+Lg0KDQrVh9W41bYg1YDVpdW11aTVpdW2Lg0KDQpTaXJlbGkg
eW5rZXIsDQoNClllcyBBdnN0cmFsaWF5aSBr4oCZYWdoYWvigJlhdHPigJlpIHllbSwgYXBydW0g
eWVtIEFNTiAtdW0geWV2IHJyaXllbHTigJl2b3INCnllbSAzNSB0YXJ2YSBhc2hraGF0YW5r4oCZ
YXlpbiBw4oCZdm9yZHpvdg0KcOKAmXZvcmR6YXJydXTigJl5dW46IFZlcmplcnMgdmFyYWt2ZXRz
4oCZaSBDb3ZpZC0xOSB2aXJ1c292IHlldiBkcmEgcGF0Y2hhcnJvdg0KaW0gdGFyaWvigJlpLCB5
ZXMgY2jigJllbSBrYXJ0c3VtLCB2b3Iga2Fyb2doIHllbSBnb3lhdGV2ZWwgc2E6IFllcw0KdOKA
mXTigJl2YXRzbmkgdGFrIHllbSB5ZWdoZWwgYQ0KbWkga+KAmWFuaSBvciwgeWV2IHllcyBjaOKA
mWVtIGthcm9naCBreWFua+KAmXMgZ25lbCBw4oCZdm9naG92OiBZZXMga2Fyb2doDQp5ZW0gNTUg
bWlsaW9uIEFNTiBkb2xhciBudmlyYWJlcmVsIGJhcmVnb3J0c3V04oCZeWFueSwNCmhhdGthcGVz
IGFnaGvigJlhdG5lcmluIG9nbmVsdSBoYW1hcjogQW50c+KAmXlhbCB0YXJpIHllcyBrb3J0c+KA
mXJldHPigJlpDQprbm9qcyBr4oCZYWdodHPigJlrZWdoaXRz4oCZLCB5ZXYgaW0gbWlhayB2b3Jk
aW4ga+KAmXJvbmlrIGhpdmFuZCBlDQpraGFnaGFtb2wsIG92IG1za2hldHPigJkgaW0gdHJhbWFk
cmF0cyBib2xvciBtaWpvdHPigJluZXJ5Og0KSGl2YW5kIGhpdmFuZCBhbmtvZ2hudW0gcGFycmth
dHMg1Z0gYXJyYW50c+KAmSBnb3lhdGV2bWFuIGh1eXMgdW5lbmFsdSwNCm1hZ2h04oCZdW0geWVt
DQpkdSBpbmR6IG9nbmV0c+KAmWlyIGthdGFyZWwgaW0gdmVyamluIHRz4oCZYW5rdXTigJl5dW55
OiBTYSB0c+KAmWFua3V04oCZeXVuIGUsDQp2b3J5IGt0c2FycmF5aSBpbmR6DQp2b3JwZXMgYWdo
YWNo4oCZYW5r4oCZIEFzdHRzdW4gaW0gaG9ndSB5ZXYgaW0gbWVnaGvigJllcmkgdOKAmXZvZ2h1
dOKAmXlhbg0KaGFtYXI6IFlldOKAmWUg4oCL4oCLcGF0cmFzdCB5ZWvigJkNCnlldiBwYXRyYXN0
IGUgb2duZWwsIGtobmRydW0geWVtIHBhdGFza2hhbmVr4oCZIGluZHosIHlldiB5ZXMgZHpleg0K
bWFucmFtYXNuZXIga3RhbTogWWVzIGdpdGVtLCB2b3IgeWVzDQprYXJvZ2ggZSB2c3RhaGVsIGvi
gJllejogT2duZXRz4oCZZWvigJksIGtobmRydW0geWVtLg0KDQpIYXJnYW5r4oCZbmVyb3YuDQoN
ClNob24gSGV5ZGVuLg0KDQoNCg0KRGVhciBmcmllbmQsDQoNCkkgYW0gYW4gQXVzdHJhbGlhbiBj
aXRpemVuIGxpdmluZyBpbiB0aGUgVVNBIGFuZCBhIHJlYWx0b3Igd2l0aCAzNSB5ZWFycyBvZg0K
ZXhwZXJpZW5jZS4gSSByZWNlbnRseSBiZWNhbWUgaW5mZWN0ZWQgd2l0aCB0aGUgQ292aWQtMTkg
dmlydXMgYW5kIGR1ZSB0bw0KbXkgYWdlLCBJIGRvbid0IHRoaW5rIEkgY2FuIHN1cnZpdmUgdGhp
cy4gSSBoYXZlIGJlZW4gdW5kZXIgb3h5Z2VuIGZvciBhDQpmZXcgZGF5cyBhbmQgSSBjYW4ndCBi
dXkgbXkgbGlmZSB3aXRoIG1vbmV5LiBJIGNvdWxkIGRvbmF0ZSA1NW1pbGxpb24NClVTRCB0byBj
aGFyaXR5LA0KZXNwZWNpYWxseSB0byBoZWxwIHRoZSBwb29yLiBMYXN0IHllYXIgSSBsb3N0IG15
IHdpZmUgdG8gY2FuY2VyIGFuZCBteQ0Kb25seSBzb24gaXMgYSBjaHJvbmljDQpnYW1ibGVyIHdo
byBzcXVhbmRlcmVkIGFsbCB0aGUgZnVuZHMgSSBnYXZlIHRvIGhpbS4NCkx5aW5nIGluIG15IHNp
Y2sgYmVkLCB3aXRoIG5vIGhvcGUgb2Ygc3Vydml2YWwsIEkgd2lzaA0KeW91IGhlbHBlZCBtZSBm
dWxmaWxsIG15IGxhc3Qgd2lzaC4gVGhpcyBpcyBhIHdpc2ggdGhhdCB3aWxsIHNlcnZlIG1lDQph
cyBhIHBsZWEgdG8gR29kIGZvciBteSBzb3VsIGFuZCBteSBmb3JnaXZlbmVzcyBvZiBzaW5zLiBJ
ZiB5b3UgYXJlIHdpbGxpbmcNCmFuZCByZWFkeSB0byBoZWxwLCBwbGVhc2UgYW5zd2VyIG1lIGFu
ZCBJIHdpbGwgZ2l2ZSB5b3UgZGV0YWlscy4gSSBrbm93IEkNCmNhbiB0cnVzdCB5b3UuIEhlbHAg
bWUgcGxlYXNlLg0KDQpLaW5kIHJlZ2FyZHMsDQoNClNoYXduIEhheWRlbi4NCg==
