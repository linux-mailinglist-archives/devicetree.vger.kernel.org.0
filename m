Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA16B73E730
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 20:09:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230320AbjFZSJD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 14:09:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbjFZSJD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 14:09:03 -0400
X-Greylist: delayed 411 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 26 Jun 2023 11:09:01 PDT
Received: from relay.strateg.ua (relay.strateg.ua [135.181.5.166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 096629F
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 11:09:01 -0700 (PDT)
Received: from smtp.strateg.ua (unknown [10.34.12.32])
        by relay.strateg.ua (Postfix) with ESMTPS id A52138CA0CA
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 20:02:07 +0200 (CEST)
Received: from email-system.local (localhost [127.0.0.1])
        by email-system.local (Postfix) with ESMTP id 4QqbJt6w0Nz841ML
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 21:02:06 +0300 (EEST)
Authentication-Results: email-system.local (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)" header.d=sudohodstvo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sudohodstvo.org;
         h=reply-to:date:date:from:from:to:subject:subject
        :content-description:content-transfer-encoding:mime-version
        :content-type:content-type; s=dkim; t=1687802526; x=1688666527;
         bh=QEt13M/0YYdXf13j4/vg7b+uUw6K1/1SAoHmEDPE/qU=; b=kVjmxgNk84Cr
        NZlAm34IhNIaH7SP5poLPeGXjF8WYuGhL6J2yHeoKQz3PyqE+RlXiOGKejx7nTE1
        o/Lq3bsHmu1fsv+1Jz7PuOje5nq9LqGmRBX7BpEPzDRhiEoPovqNT1N/mUpIaYxN
        A8eQ4A8y7MjlAMAd+S/VpuB1tbFYHaA=
X-Virus-Scanned: amavisd-new at email-system.local
Received: from smtp.strateg.ua ([127.0.0.1])
        by email-system.local (email-system.local [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 61Edmi2tvjqh for <devicetree@vger.kernel.org>;
        Mon, 26 Jun 2023 21:02:06 +0300 (EEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: kostetskaya.t@sudohodstvo.org)
        by email-system.local (Postfix) with ESMTPSA id 4QqYKr4bkGz841Mm;
        Mon, 26 Jun 2023 19:32:48 +0300 (EEST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Re: 
To:     Recipients <kostetskaya.t@sudohodstvo.org>
From:   MacKenzie Scott <kostetskaya.t@sudohodstvo.org>
Date:   Tue, 27 Jun 2023 00:32:45 +0800
Reply-To: h.amer@azzouni.sa
Message-Id: <4QqbJt6w0Nz841ML@email-system.local>
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_40,DKIM_INVALID,
        DKIM_SIGNED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ahoj,

Jsem Mackenzie Scott b=C3=BDval=C3=A1 man=C5=BEelka zakladatele a gener=C3=
=A1ln=C3=ADho reditele Amazonu, daruji 4 miliardy dolaru charitativn=C3=ADm=
 organizac=C3=ADm, jednotlivcum a vysok=C3=BDm =C5=A1kol=C3=A1m po cel=C3=
=A9m svete od Scottovy nadace, abych poskytla okam=C5=BEitou podporu lidem,=
 kter=C3=AD ekonomicky trp=C3=AD pandemi=C3=AD COVID-19 a v=C3=A1m' jsem je=
dn=C3=ADm ze =C5=A1tastn=C3=BDch v=C3=BDhercu, m=C3=A1m pro v=C3=A1s darova=
c=C3=AD grant v hodnote 100 800 000,00 dolaru, v pr=C3=ADpade z=C3=A1jmu me=
 mu=C5=BEete kontaktovat pro v=C3=ADce informac=C3=AD.

S pozdravem
MacKenzie Scottov=C3=A1.
