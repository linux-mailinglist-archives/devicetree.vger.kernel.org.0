Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3F257020DC
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 02:50:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjEOAuJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 20:50:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbjEOAuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 20:50:09 -0400
X-Greylist: delayed 430 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 14 May 2023 17:50:06 PDT
Received: from mail-out02.belwue.de (mail-out02.belwue.de [IPv6:2001:7c0:0:76::12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D59E10DB
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 17:50:06 -0700 (PDT)
Received: from mail-hub01.belwue.de (mail-hub01.belwue.de [129.143.76.41])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (Client did not present a certificate)
        by mail-out02.belwue.de (Postfix) with ESMTPS id 4QKLF22KcpzB1108;
        Mon, 15 May 2023 02:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dhbw-ravensburg.de;
        s=DKIM001; t=1684111366; h=from:from:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:cc:mime-version:mime-version:
         content-type:content-type:  content-transfer-encoding:content-transfer-encoding;
        bh=RNaOgrSy70wp7WTLmZJTA9WP9+nLRpFE39oHhVNwQlE=;
        b=HEfMxobhJJ/HWYpOG84hfrOj3tGfZySqm4kkgnJpcXMeNEDjAgDVsNFpM9BH0TqGXLBN5w
        iNFTqAly+ntFuCa6CY47v9lrWMAuh8ey+Anf7B1xtyxbLXFJD4iFZanSGuexWVMPJfAMKn
        v9V+rWCQqtcSbygDjjkbgqjCGyTsLheuGUo3ewAhRRIJ+D1plNVRifwiOY8zN/mA8DF9wo
        KU9omi9IWDMi//glf5YP/djzFLL4HI2ZoT+NLdnHYwAim5z1ChZi002u0kDFl0orw7g1Qm
        J6UkfBQ9A0Rj8T5/oxeZxBZ57QF2ZuRkKwb3K2g36xCSrwMGf3C2Jwz3DhhHMg==
Received: from exhubcas01.dhbw-ravensburg.de (unknown [141.68.130.11])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (Client did not present a certificate)
        by mail-hub01.belwue.de (Postfix) with ESMTPS id 4QKLDj2Y3Cz52B7k;
        Mon, 15 May 2023 02:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dhbw-ravensburg.de;
        s=DKIM001; t=1684111358; h=from:from:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:cc:mime-version:mime-version:
         content-type:content-type:  content-transfer-encoding:content-transfer-encoding;
        bh=RNaOgrSy70wp7WTLmZJTA9WP9+nLRpFE39oHhVNwQlE=;
        b=ilyrxdjGLg1iL321dxZIkBl6eHiYan/VYUvTqdzdVkguyHBqM6RU/QB35zhfcdguPh27mn
        cWBFwnplGCkxKK9ycwcb6RNu1apLXyeGlq8EwXJ87rUyLMxpj+ffHXgEQGSr5NzZAfrECm
        Lgv5pzaI2QZvebFEzFMBloFHSrKZki9vI8Eu6yAxXXz5xccTwggPy7i7EaJwu6tQmOOTY3
        a1lz7qBUmsRpE899P8QwmYSvhn9hJJLakMmV/rYJQFKF3MpPmuO8aBP2Z9ga9c/VLmCIF9
        uCsA0DsG9V78N+0lJeV6EEZMq8w2aBoin7NFCd6fQeH+I2+5cdzpvGQr1VaC9A==
Received: from EXMAIL02.msx-dhbw-rv.intra ([141.68.130.22]) by exhubcas01
 ([141.68.130.11]) with mapi id 14.03.0513.000; Mon, 15 May 2023 02:22:30
 +0200
From:   "Bergmann, Michaela - DHBW-Ravensburg" <bergmann@dhbw-ravensburg.de>
Subject: Aw: Das META-Unternehmen Zuschuss 
Thread-Topic: Aw: Das META-Unternehmen Zuschuss 
Thread-Index: AdmGv8PQj5pSwbbXQbCGUnnW8YF04QAA30egAAAAFQAAAAAeYAAAAB1QAAAAOYAAAAAaYAAAAB4wAAAAIpAAAAAcUAAAADpA
Date:   Mon, 15 May 2023 00:22:29 +0000
Message-ID: <9B98CDA3A8E98B478103857425C9C0FD042A44434D@exmail02>
Reply-To: "contact@mtagroup.info" <contact@mtagroup.info>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.68.120.240]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Rspamd-UID: 33de58
X-Rspamd-Queue-Id: 4QKLF22KcpzB1108
X-Rspamd-UID: 9adc9d
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FILL_THIS_FORM,LOTS_OF_MONEY,
        MISSING_HEADERS,MONEY_FORM,RCVD_IN_DNSWL_MED,REPLYTO_WITHOUT_TO_CC,
        SPF_HELO_NONE,SPF_PASS,T_FILL_THIS_FORM_LOAN,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


META Unternehmen
Facebook, Instagram und WhatsApp
1601 WILLOW ROAD MENLO PARK, CA 94025
www. facebook. com

Dem Unternehmen META geh=F6ren neben anderen Produkten und Dienstleistungen=
 auch Facebook, Instagram und WhatsApp. Meta ist eines der wertvollsten Unt=
ernehmen der Welt.

META (die Muttergesellschaft von Facebook, Instagram und WhatsApp) vergibt =
einen Zuschuss in H=F6he von $920.000,00USD an 10 gl=FCckliche Kunden aus a=
llen L=E4ndern der Welt. Wir gratulieren Ihnen, dass Sie einer der zehn Gl=
=FCcklichen sind, die diesen Zuschuss von $920.000,00USD erhalten.

Kontaktieren Sie uns per E-Mail: contact@mtagroup.info mit den folgenden In=
formationen, um Ihren Zuschuss zu bearbeiten.
=A0
Vollst=E4ndige Namen .............
Telefonnummer ........
Adresse .............
Land ................
Geschlecht .................
Alter ....................
Beruf .............
=A0
Die Firma META sch=E4tzt Ihr Recht auf Privatsph=E4re! Ihre Daten sind zu 1=
00 % sicher und werden ausschlie=DFlich f=FCr den Zweck dieses Zuschusses v=
erwendet.

Es gelten die allgemeinen Gesch=E4ftsbedingungen.



B=FCro des Pr=E4sidenten von
Facebook-CEO
Herr Mark Zuckerberg
