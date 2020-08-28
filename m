Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C33C2255BE8
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 16:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726871AbgH1OFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 10:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727084AbgH1OEw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 10:04:52 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23253C061232
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 07:04:52 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id n13so1259804edo.10
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 07:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=dqtSU8JEYMvnkVYf1RVGArqH8doE/FNGVaFOKyNGyKE=;
        b=ikKx+50awhUdZp6ivM6ACh32ygGJYmqvM8FKj6NHRm2pmgTsRqe7jNDMGg2XRirVQ8
         e6PJ9rXru5Mume4ib2pz1xP965CJ75smyQ7BLnbnBHr22/RwO6nrFEMOnXL0scXFwEn/
         FbvLf2sGTOFj5fSmIZ4XH+sbyxF4DnZrIcVJdNFDj2kAUJUvw+pVb3VKPuLtSf9ttPb/
         DgnAnW7+8cm0AyckKellH2pCX5amerqFrfW1HLGacwVHCOA0bu8rQhJDY7H1Z4UUveW9
         NS0vYUuf+yImO8aHuR4+eYmI+qhiyFS0dBnHxQmtXjxeRMGpkL3tPFsrrIeiBUFPTWSu
         KIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=dqtSU8JEYMvnkVYf1RVGArqH8doE/FNGVaFOKyNGyKE=;
        b=e/f65cCowiWG3HhvbxzxOK8zv81rTHvNf+Wu73FIGD103ZequhCDZEFSNzj0X1X1sX
         XmHvB7iN5NsRf1Gc/tXbhBRNplBIjPmPMtJjS6T+z8+xopRJosA5GHpeddUAMxgeEb7d
         DgiamJhXKVrsRaUXcymop+f6ZRou9pSrs2IgXgwm9TVy+AZJw/GQ/daVAHs71QPOasYI
         MPyb7nO3J4eoiwy1Q8A4qDHGPxmi6gm7cf9mhpgrgGG3yg1IjjP3BbM/UINWgank2YAq
         Zj3GKyZDV/DgVlu3LqapMrKkZjFDWsz843hKeMGJI4/c6R0CPPcgjyjsld96R2x8UmgV
         yShQ==
X-Gm-Message-State: AOAM533ZcCFMaLXOF04FeuLbHkllSDVHhDKc3LAcbNW2DtspR5TMxw5K
        gFI70mlDRMWnH9aMVbP0w6JGTDQ7mzcSCiBDcXU=
X-Google-Smtp-Source: ABdhPJyUuTE6djSv4gHmYj+t2J+9pvzwNngpZ8BlrloNzFDVw6gOqr0e6dCztqR1APZWaGMUwOcEXNptannzn5FuDVA=
X-Received: by 2002:aa7:d912:: with SMTP id a18mr2023170edr.18.1598623490775;
 Fri, 28 Aug 2020 07:04:50 -0700 (PDT)
MIME-Version: 1.0
Reply-To: gen.bellalagan@gmail.com
Received: by 2002:a05:6402:457:0:0:0:0 with HTTP; Fri, 28 Aug 2020 07:04:50
 -0700 (PDT)
From:   "Gen.Bella Lagan" <gen.1bellalagan@gmail.com>
Date:   Fri, 28 Aug 2020 16:04:50 +0200
X-Google-Sender-Auth: YVK8t3qW3JkM6mjfxO1Onu4S9lc
Message-ID: <CAP2EcMKdG01iQdan=fjHyrv0x3Ok+OSznZz418HCVbAjdwTn+g@mail.gmail.com>
Subject: Good Day,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good day,

Am Bella Logan, a staff Gen. in the US Army presently serving in
Syria, I sincerely apologize for intruding into your privacy, this
might come as a surprise to you, but nothing is more distressing to me
at this time as i find myself forced by events beyond my control, i
have summoned courage to contact you. Am a 45 years old lady, am a
widow and I had a son who is now 16 years of age.

Some money in various currencies where discovered in barrels at a farm
house in the middle East during a rescue operation in Iraq War, and it
was agreed by Staff Sergeant Kenneth Buff and myself that some part of
these money be shared between both of us, I was given a total of ($5
Million US Dollars) as my own share , I kept this money in a
consignment for a long while with a security Company which i declared
and deposit as my personal effects and it has been secured and
protected for years now with the diplomatic Delivery Service.

Now, the WAR in Iraq is over, and all possible problems that could
have emanated from the shared money has been totally cleaned up and
all file closed, all what was discovered in the Middle East is no more
discussed, am now ready to retire from active services by the end of
this month, but, i need a trustworthy person that can help me take
possession of this funds and keep it safe while i work on my relief
letters to join you so that we could discuss possible business
partnership together with the money.

But I tell you what! No compensation can make up for the risk we are
taking with our lives.You can confirm the genuineness of the findings
by clicking on this web site.

http://news.bbc.co.uk/2/hi/middle_east/2988455.stm

I=E2=80=99m seeking your kind assistance to move the sum of US$5 Million
Dollars to you as far as I can be assured that the money will be safe
in your care until I complete my service here in (SYRIA) before the
end of the month.

The most important thing is; =E2=80=9CCan I Trust you=E2=80=9D?,As an offic=
er on
ACTIVE DUTY am not allowed access to money, therefore, i have declared
the content of the consignment as personal effect that i would like to
be delivered to a friend. You will be rewarded with 30% of this funds
for your help, all that is required is your trust between us till the
money gets to you.

Sincerely,
Gen. Bella Logan
Email: ( gen.bellalagan@gmail.com)
