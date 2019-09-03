Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED202A6D29
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2019 17:42:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728860AbfICPmx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Sep 2019 11:42:53 -0400
Received: from sonic301-21.consmr.mail.ir2.yahoo.com ([77.238.176.98]:43987
        "EHLO sonic301-21.consmr.mail.ir2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727107AbfICPmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Sep 2019 11:42:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1567525370; bh=VibL578GEccAedaZO7BHC8VYAUN8G2X4kmXaZKbkMKw=; h=Date:From:Reply-To:Subject:From:Subject; b=In43z8Tk5xnKMXKFuD//OPCXm7Srxu1b7c6/ArWj0NHuiLxdngDe18Z4/Kfv/Rh0RN32iSc8mij7wwiYpEBmffKR2rSMTWvHZzVL791SsYnjDran+r4PBg2ijcG0V3O5hSBCtx3AIlFVtX0qY7PWifKu3+WpGSBTVIP0FHrrwLIfAM3OC4K/D5aTRl8jIO7N8dW0JgmWJHWma2Z6I417sqVH2jt6pyo8Bq8G0K2FZbXugqW/ZQlzY978eejWex91v4GAuwTV0yvPAnjn+slzsdAwoAkCA+nczYzGUC4kliRJvpu1vkTTVI8gIqApqtX1pZ5Y3s+us6qe2qqEgwN6Qw==
X-YMail-OSG: rPaqidAVM1lOCFIQUwIT3xlR2xk45grEBGm6k7YRCb0e4wFB0Xg0TmttrOFUYbl
 sW.Q4i1v1rK8cmkUTvO9Sdgf27ryBVuOZeej.RbXO.zMzuHkgaq9LCMJH9GJ1LhVaSEMef2PQtf5
 Zdwaly7cF5Jm_J3wTZa_G4vhyZy_ZfTppDVn5v_Cyt5GEDKg7uWSTmuZ0EHZLsP.jNB7.1hKwjgk
 JVUVDpzuQELL1_VrD7ffO0wXb.0wMkQ6UQcjj6jdTd0kebaz7i9dSWbDXlpPF8fkDlqnPd17J9AR
 kwTrR0pdwLOkwN2ML8c6gOpaSyoblfyWlrWEUhzyk5vwbGfYmy1wQIBdIYzMIfJVAUAV3hiC7O_H
 xpB_FmSAj9wfaOz.l17LLpe0GNvlKjP5kpmiGcmFzZ07FYKd5zcZ8DfR56CQdYJ_aqTu9SMmjExD
 .XHc7j.zcJH78OC0K5dO2kyfOryxoZuLnoYIl7QDxaK94unrJaJ7wzs7cQjEpugldWozG37cPR.u
 VCJp4fgyedZIcxSytWCbOARSYFfByIa_fF3v2bNRN8LyG_ZePADW674pQu9Epb1HKzex6NgnPigx
 CaRvv.UOVWejxSQ8XlylnYMprDXQ2sUOguHvUuakqMlRgt8q7Apqs7fX2RnaWvpDtKkK7AbMbC4z
 S7J7xTqAx95dyrOGRXOLAXmKwDUxnmM0oihYl3nRE.rnjMquZgX2dxpfbK7gbEInAS_2t6cRD6SK
 6f36ZxW6zHKzZKkZwboybVuuR2Sd2sM4uIiOOfKfjyKqd49yha6mcBMCgnWsgiKXMky7Or5hhpe5
 jM9Rocp28qj_bex0MiDRCh6Efvh8y_nC66IP6PNgIQEuE7h2UJBl09LwUYBE7HIvJxzMHiz3LplO
 lQe0BUQ1Z5aNZl2c6z2HWZgTWTMwjlQC4X2i02SIUNuJibo.y3E4AiEfOS5Sp7fE48M58.Q28pgt
 eO.T9EtJSHaBB3KIMMXRdepiN2YYmJKk837Ia59hQhQxHRboHhRCOpQ7apOWB30wFoS5qNejydpY
 i.hu0ocRndPzkeeWLTTNAaRVma0vChwOCslCf.txNmyYTbQ52U17bc8kiqlrD_K_kSywWdSp9__3
 iBFjr0fPwLSHtlz5aBiluyg70k7h6HNUErf9G6DwkK5I1O2mLncE_90WmVed6H_z6dZr991yZrmG
 VsPNT0Af_drYR.fFKlen7wK1Ytz5mdcLiGQSrM36e0ci3D32pTeH2nE3jYA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.ir2.yahoo.com with HTTP; Tue, 3 Sep 2019 15:42:50 +0000
Date:   Tue, 3 Sep 2019 15:42:46 +0000 (UTC)
From:   Mrs Gomina Mbuluta <gominambuluta111@gmail.com>
Reply-To: gominambuluta2@gmail.com
Message-ID: <460810119.2903683.1567525366088@mail.yahoo.com>
Subject: Dear Friend,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Dear=C2=A0Friend,

Having=C2=A0viewed=C2=A0your=C2=A0statue=C2=A0on-line=C2=A0which=C2=A0motiv=
ated=C2=A0me=C2=A0that=C2=A0you=C2=A0can=C2=A0be=C2=A0a=C2=A0trusted=C2=A0p=
erson,i=C2=A0am=C2=A0contacting=C2=A0you=C2=A0in=C2=A0respect=C2=A0to=C2=A0=
my=C2=A0late=C2=A0husband=C2=A0s=C2=A0fund=C2=A0worth=C2=A0US=C2=A020.5=C2=
=A0Million=C2=A0deposited=C2=A0with=C2=A0ATLANTIQUE=C2=A0BANK=C2=A0BENIN=C2=
=A0REPUBLIC,for=C2=A0safe=C2=A0keeping=C2=A0purposes.But=C2=A0right=C2=A0no=
w=C2=A0my=C2=A0husband=C2=A0is=C2=A0dead=C2=A0and=C2=A0the=C2=A0financial=
=C2=A0firm=C2=A0has=C2=A0been=C2=A0giving=C2=A0me=C2=A0several=C2=A0notific=
ations=C2=A0to=C2=A0make=C2=A0the=C2=A0claim=C2=A0of=C2=A0the=C2=A0said=C2=
=A0deposit.=C2=A0I=C2=A0want=C2=A0a=C2=A0situation=C2=A0whereby=C2=A0i=C2=
=A0will=C2=A0present=C2=A0you=C2=A0as=C2=A0my=C2=A0Executor=C2=A0to=C2=A0th=
e=C2=A0bank=C2=A0so=C2=A0that=C2=A0you=C2=A0assist=C2=A0me=C2=A0to=C2=A0mak=
e=C2=A0the=C2=A0claim=C2=A0of=C2=A0this=C2=A0fund=C2=A0from=C2=A0the=C2=A0f=
inancial=C2=A0firm=C2=A0so=C2=A0that=C2=A0it=C2=A0will=C2=A0be=C2=A0transfe=
rred=C2=A0to=C2=A0your=C2=A0custody=C2=A0pending=C2=A0my=C2=A0arrival=C2=A0=
with=C2=A0my=C2=A0only=C2=A0daughter=C2=A0to=C2=A0your=C2=A0country=C2=A0so=
=C2=A0that=C2=A0we=C2=A0can=C2=A0use=C2=A0it=C2=A0judiciously=C2=A0for=C2=
=A0investment=C2=A0purposes.

My=C2=A0only=C2=A0daughter=C2=A0will=C2=A0continue=C2=A0her=C2=A0education=
=C2=A0in=C2=A0your=C2=A0country=C2=A0upon=C2=A0our=C2=A0arrival=C2=A0once=
=C2=A0every=C2=A0arrangement=C2=A0as=C2=A0regards=C2=A0this=C2=A0transactio=
n=C2=A0is=C2=A0concluded.I=C2=A0will=C2=A0be=C2=A0offering=C2=A0you
20%=C2=A0of=C2=A0the=C2=A0fund=C2=A0for=C2=A0your=C2=A0foreign=C2=A0assista=
nce=C2=A0as=C2=A0long=C2=A0as=C2=A0you=C2=A0can=C2=A0help=C2=A0me=C2=A0out=
=C2=A0in=C2=A0carrying=C2=A0out=C2=A0this=C2=A0project=C2=A0effectively=C2=
=A0without=C2=A0insinuating=C2=A0greed=C2=A0and=C2=A0selfishness.=C2=A0I=C2=
=A0am
contacting=C2=A0you=C2=A0in=C2=A0this=C2=A0respect=C2=A0for=C2=A0the=C2=A0b=
elow=C2=A0purposes,

1,To=C2=A0avoid=C2=A0awareness=C2=A0of=C2=A0my=C2=A0late=C2=A0husbands=C2=
=A0relatives=C2=A0because=C2=A0they=C2=A0would=C2=A0like=C2=A0to=C2=A0inher=
it=C2=A0it=C2=A0alone=C2=A0if=C2=A0i=C2=A0dare=C2=A0disclose=C2=A0it=C2=A0t=
o=C2=A0them=C2=A0because=C2=A0they=C2=A0said=C2=A0that=C2=A0i=C2=A0do=C2=A0=
not=C2=A0have=C2=A0a

male=C2=A0child=C2=A0for=C2=A0my=C2=A0late=C2=A0husband=C2=A0without=C2=A0c=
onsidering=C2=A0the=C2=A0welfare=C2=A0of=C2=A0me=C2=A0and=C2=A0my=C2=A0only=
=C2=A0daughter.

2,To=C2=A0avoid=C2=A0awareness=C2=A0of=C2=A0Benin=C2=A0Republic=C2=A0Govern=
ment=C2=A0about=C2=A0the=C2=A0fund=C2=A0since=C2=A0my=C2=A0husband=C2=A0was=
=C2=A0a=C2=A0former=C2=A0politician=C2=A0in=C2=A0Benin.=C2=A0Once=C2=A0i=C2=
=A0receive=C2=A0your=C2=A0positive
response,i=C2=A0will=C2=A0give=C2=A0you=C2=A0more=C2=A0details=C2=A0as=C2=
=A0to=C2=A0enable=C2=A0us=C2=A0proceed


Yours=C2=A0sincerely
Mrs=C2=A0Gomina=C2=A0Mbuluta
