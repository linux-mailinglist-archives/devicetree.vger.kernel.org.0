Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E760493592
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 08:37:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352068AbiASHhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 02:37:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241096AbiASHhb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 02:37:31 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF9E3C061574
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 23:37:30 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id x22so5683553lfd.10
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 23:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=nxas1cCdccRw5u20gUoyx+VIZfjQdHN+JUXdltsUcV0=;
        b=UNLUGfkgkGT6X1TpzR+7Ab/YVPL2D3h0CAT4rjtaHq1h8WPZ7Beix1b9b2qJ7gyiDW
         LIuqe9SHkEb66th5EgJs8+EfEN+wyUh1BTDsO+2b8J+idOeAg+B2+Dd4BNU745zGkV3M
         xTIBGSfql6ZVTA5burrbb9rZi6BSDjizrS6efdXReMn1ym7hLnkihgwE+0knR5GudoDu
         f3e5a51qgJNkQrKUjRamUIx3EgE8IZvUUPu5OLovG0RSeHq2u3Ez+MFuJcCOFLI5Nzk4
         2LjherYwvsEvvGOvMIGj1PE2o6M+eHMxFb4HvdHzTMgjAgR/q/A4GZEm3EpLctLGibig
         Q8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:content-transfer-encoding;
        bh=nxas1cCdccRw5u20gUoyx+VIZfjQdHN+JUXdltsUcV0=;
        b=Hu2ld+xiO85bobDYR1bOjgxG1DEYAhL9uo/QwuXkMY84tBPSWF7gIlJyMPqi1UpuKn
         s0aat+pHoIESTmdpTWmzIhzv9YpDrg9v9YpqtMXSN8DwR7fBSXL8r233/G9bGWuO/wmq
         gNsveNoN7sltdxt+oDJhlaJ00vQHYA6y0Weh2a4K1S79umEPGui1XABifjQZbxbTHlqU
         H55ib8AF2+PTV+PWOKcF57lCxn6os+Jm/pPn+M4GmhRhKJCSSDrwP0RPx68S1dJC/Rji
         +57udlAWI0MrPRi9M/2IBFUGODqPqWxZSR/MdLCTo/ZMfZoq5rhr42tPtaOW4Zias4HA
         xIiA==
X-Gm-Message-State: AOAM533upBK7Ow0BwU0qbiN2eJnivStgG6ZRCbmQewqVmYsS6WOwGXOa
        uGg5sA+PT1jMtjzFQkVafRQa1YocHn2tQDGTNrY32XYkmzHzuw==
X-Google-Smtp-Source: ABdhPJwkVs7CIyTv8Pn4CovUPjrkkbIYk3eXRaRoKiG7r5DkA6rTYxfYUF5whVEahelmy9maTdx38iIKuw3l4M+I3yI=
X-Received: by 2002:a05:6512:3fa6:: with SMTP id x38mr25490212lfa.676.1642577848955;
 Tue, 18 Jan 2022 23:37:28 -0800 (PST)
MIME-Version: 1.0
Sender: jonahfirst45@gmail.com
Received: by 2002:a05:6520:809:b0:181:6e53:f197 with HTTP; Tue, 18 Jan 2022
 23:37:28 -0800 (PST)
From:   Jackie Fowler <jackiefowler597@gmail.com>
Date:   Wed, 19 Jan 2022 07:37:28 +0000
X-Google-Sender-Auth: XY_D16PnLZ9YkM4CmKJ_ewWz6FA
Message-ID: <CADG_itOb0AeBntUgAb-mWxp1Nww27T07dNkE3+i74rWtKUpZaQ@mail.gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Gooday dear,

  I sent this mail praying it will get to you in a good condition of
health, since I myself are in a very critical health condition in
which I sleep every night without knowing if I may be alive to see the
next day. I bring peace and love to you. It is by the grace of God, I
had no choice than to do what is lawful and right in the sight of God
for eternal life and in the sight of man, for witness of God=E2=80=99s merc=
y
and glory upon my life. I am Ms.Jackie.Fowler,a widow,I am suffering
from a long time brain tumor, It has defiled all forms of medical
treatment, and right now I have about a few months to leave, according
to medical experts.

   The situation has gotten complicated recently with my inability to
hear proper, am communicating with you with the help of the chief
nurse herein the hospital, from all indication my conditions is really
deteriorating and it is quite obvious that, according to my doctors
they have advised me that I may not live too long, Because this
illness has gotten to a very bad stage. I plead that you will not
expose or betray this trust and confidence that I am about to repose
on you for the mutual benefit of the orphans and the less privilege. I
have some funds I inherited from my late husband, the sum of ($
12,500,000.00 Dollars).Having known my condition, I decided to donate
this fund to you believing that you will utilize it the way i am going
to instruct herein.

   I need you to assist me and reclaim this money and use it for
Charity works, for orphanages and gives justice and help to the poor,
needy and widows says The Lord." Jeremiah 22:15-16.=E2=80=9C and also build
schools for less privilege that will be named after my late husband if
possible and to promote the word of God and the effort that the house
of God is maintained. I do not want a situation where this money will
be used in an ungodly manner. That's why I'm taking this decision. I'm
not afraid of death, so I know where I'm going. I accept this decision
because I do not have any child who will inherit this money after I
die. Please I want your sincerely and urgent answer to know if you
will be able to execute this project for the glory of God, and I will
give you more information on how the fund will be transferred to your
bank account. May the grace, peace, love and the truth in the Word of
God be with you and all those that you love and care for.
I'm waiting for your immediate reply.
Respectfully.
Ms.Jackie.Fowler.
Writting From the hospital.
May God Bless you.
