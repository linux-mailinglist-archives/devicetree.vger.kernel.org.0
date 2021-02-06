Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8940311DDC
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 15:40:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbhBFOkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Feb 2021 09:40:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbhBFOkK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Feb 2021 09:40:10 -0500
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8FC6C061797
        for <devicetree@vger.kernel.org>; Sat,  6 Feb 2021 06:39:30 -0800 (PST)
Received: by mail-oo1-xc2b.google.com with SMTP id q4so2375007ood.8
        for <devicetree@vger.kernel.org>; Sat, 06 Feb 2021 06:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=sY4fgq/DSyThalwU7QX+pWYKs/8sGH7ZznMUn5qQ1EY=;
        b=Qs8r76/BtOOSzUYL1V4hUd79T/8DAbxMKk3osIzB1uw8eoNvgKLR7FgpCNIRXVR29N
         A3dUVjfVETt99wpg69TSxcpIfHMXyxDsmb7QPVSefXLVAEt91nuBA/qt+DqHMBSPb2AO
         SrhiJCV/lIoNJyux8ytrNYqu3KZohrBSr4gTgXqojH7cojbJklhq8mTpVGjb3o4VJ6NB
         JWAvmomatkkKGBWd318n5ktWAOZeVVFELFWF+BhfSF5bcqTr/jljAgo628eFadrt+MHN
         GD1mdHbMshLcCACgaAOVeRn51MsoB9F4W+oLEgBuDZrrj+kfMH7soMH1lMElp6ODKB91
         VS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=sY4fgq/DSyThalwU7QX+pWYKs/8sGH7ZznMUn5qQ1EY=;
        b=ekXlrMAst0uUTgXB1QHgthi8C88Y7u/fgCBTKVyrU+Z1YW3a/koX1AecWObsLqJLP0
         UOsIROcvjJaLGosLpyzJ4RhDFhZ/tfkMywenyU35zy/cmhaBzsGoikYjYAn53Rc7vAqA
         DjSq5DWWr39fWjGZ48bCK0bmCNJqJ4sadWOLkgWbMZy2cgTvYtfhsCcvydpOIyd5i3DN
         AjJyhK4gmrEfe7Cne5YITtAxgQ9vbS11tJUtt/CwonGkbd1DMwwt7MfJRHVq9QUZ1+eC
         QCbw65NyTz6VZQ5l7oMImM2OEcJvadskSeN56L8XzoBlOWTKCNahKfZJUHFTJfu4vDHN
         IZzg==
X-Gm-Message-State: AOAM532Lam3AHTwcFpArIHM9SnFCxpF9y3M/FRzWhydvE/NtlDBjG9QZ
        vDaP881H/MyykmEzxvADig4M3u3l/b2OZQb5t64=
X-Google-Smtp-Source: ABdhPJwiyI9HYyiXDqK7EhC3sagUoKLbnFrWjMZrqi2ttzzce4wSso44rnM+OnNQbjWBv/VQPm1t6pgeP5Ueuum0k4g=
X-Received: by 2002:a4a:945:: with SMTP id 66mr1653599ooa.1.1612622370382;
 Sat, 06 Feb 2021 06:39:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:3e4c:0:0:0:0:0 with HTTP; Sat, 6 Feb 2021 06:39:30 -0800 (PST)
Reply-To: lawyer.nba@gmail.com
From:   Barrister Daven Bango <stephennbada@gmail.com>
Date:   Sat, 6 Feb 2021 15:39:30 +0100
Message-ID: <CAO_fDi-K3V9km2eJ8bDSoNX-ou8q-cssfm2NzXmMjd8_1BsLEg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Korisnik fonda =C4=8Destitanja, Va=C5=A1a sredstva za naknadu od 850.000,00
ameri=C4=8Dkih dolara odobrila je Me=C4=91unarodna monetarna organizacija (=
MMF)
u suradnji s (FBI) nakon mnogo istraga. =C4=8Cekamo da se obratimo za
dodatne informacije

Advokat: Daven Bango
Telefon: +22891667276
(URED MMF-a LOME TOGO)
