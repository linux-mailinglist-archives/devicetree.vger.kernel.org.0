Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48B8B430395
	for <lists+devicetree@lfdr.de>; Sat, 16 Oct 2021 18:11:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240560AbhJPQNM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 12:13:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240308AbhJPQNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 12:13:12 -0400
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com [IPv6:2607:f8b0:4864:20::b42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34983C061570
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 09:11:04 -0700 (PDT)
Received: by mail-yb1-xb42.google.com with SMTP id u32so261412ybd.9
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 09:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:cc;
        bh=24EFpZU5AMMCntdM+3YfQ+A/kKth8PZ34wiS7rq1lOE=;
        b=bseLlW9LEoDw3DbC5b5KoCdO8/degait3TihyCrATD3WHb05tNNxEHTw3YjPR/8cwV
         PSI0Byb5QrK0LYQdDr1DRL8FCW01Kt47Oz5mNqDokz+QUvzm2nqe10Eaa3oW7F0MfaOA
         n93N4/ctb/wXj3EIxXuhMEIXYhJUTE38/36Mj1OdaMWy3MU94n64il1SJKMglGe3K3Ik
         6is6ZbCOfGOBL/W5QAYh4mdv5K9AryGa00ISUSsmbEcucjugzeZHNouXc8g2BWqSVfgc
         wSJAFuDeUcBqH45qQfwWhHCJqHLWEVILB5ZURzvppr4GtQTo3lmJae9Cc1VJxQ79Qmp2
         /w9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:cc;
        bh=24EFpZU5AMMCntdM+3YfQ+A/kKth8PZ34wiS7rq1lOE=;
        b=VQkFBFj5afasRCtowUaTDc98qamMRpBvZVxuadvBVrsHXeMFF9NT90jpYY/gooY5i9
         BffN2jZuak9V7I7rAVvcLntdbN4A13dhujlsRo8Zbk2mZ9sNFkOBrSLX6afOKJrWeXNi
         Ah/BaEImUm+hL6++Plwe/ymkXW6kFFNSOFSThtjz00R28g9emwERj8QigQ7f8gLwFXZX
         fJTsPHrQx+GDQV5bVhSFedmwnRTFzqRnPLCiK3mP8e+Y1kZoe13JQRgb7w92AkyOZY5g
         PCY6rVn+TWzEtXkJw4YGkGMElRCTzk0UFelvLXTcLzZZrZ/hxgCm87zZdIAO4sqOPTUw
         1I7Q==
X-Gm-Message-State: AOAM530QrH4u0yu+LuPxEQWaxXVdnr2G0wi7Dne0wMrv2UIcgCtFzvkv
        IvDXZi6XncJ6QAdwOfjwqQFZITNyathQSMX1CYA=
X-Received: by 2002:a25:d842:: with SMTP id p63mt7334317ybg.348.1634400663415;
 Sat, 16 Oct 2021 09:11:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a81:128f:0:0:0:0:0 with HTTP; Sat, 16 Oct 2021 09:11:02
 -0700 (PDT)
Reply-To: israelbarney287@gmail.com
In-Reply-To: <CAH6eeoGV15rYmq4MCT6fhOf3CeDrW_titQbBmbfqCnuH9sJt4A@mail.gmail.com>
References: <CAH6eeoHrOhdbK47ZT+fLrV4n50ySteY6gXHJ4ev0BAanPwFNEA@mail.gmail.com>
 <CAH6eeoGqdnwsiOqo9nV1gzu8yOYYi+coc21HtqX4E_7PN_A7Ww@mail.gmail.com>
 <CAH6eeoE=ni81qv_XKd=nWqSpxnZc-cfbOc26sVgtDUa8hK15Kw@mail.gmail.com>
 <CAH6eeoGk4VM-MpF720FxN5ukEEcV3Qnk5UAGr4eMD41SGFMZtw@mail.gmail.com>
 <CAH6eeoGBMbwVbG1JYjMHGZYE_OUriJQjV6YNKYsefzBVV+25mw@mail.gmail.com>
 <CAH6eeoHrPCxr1syLGh-Y2+41+sTPPdiZ3Od=hQzgUo7cGHnMUA@mail.gmail.com> <CAH6eeoGV15rYmq4MCT6fhOf3CeDrW_titQbBmbfqCnuH9sJt4A@mail.gmail.com>
From:   israel barney <griestkristen667@gmail.com>
Date:   Sat, 16 Oct 2021 17:11:02 +0100
Message-ID: <CAH6eeoEMRGCUCuxGJuCVM85+=6DOu-ASEg0RhXHMd0J+Ag6CJQ@mail.gmail.com>
Subject: Greetings
Cc:     israelbarney287@gmail.com
Content-Type: text/plain; charset="UTF-8"
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Good Day My Good Friend.

I am deeply sorry if I have in any manner disturbed your privacy.
Please forgive this unusual manner of contacting you, there is
absolutely going to be a great doubt and distrust in your heart in
respect for this email. There is no way for me to know whether I will
be properly understood, but it is my duty to write and reach out to
you as a person of transparency, honesty and high caliber. I'll
introduce myself once again, I am Mr. Israel Barney, from Togo Republic. I
am also the Branch Bank Manager of Biatogo Bank, I was also the
Account Manager of my late client Mrs. Anna Who might or might
not be related to you.

She traveled down to china on the 28th of December 2019 on a five
weeks business trip and after the successful transaction in china, she
flew back, not knowing she has been infected with the deadly
Coronavirus (COVID-19). And she sadly passed away on March 20th 2020.
She left the sum of $3.2 Million (Three Million, Two Hundred Thousand
United States Dollars) in our financial institute (Bank), she
specifically confided in me told me that "no one else knows about her
funds in our bank" that the funds was for a project before she passed
away while she was ill. And down here in our country at this present
day, once anyone passes away, after 1 Year if no relatives of the late
the customer doesn't come to claim the funds/assets, it'll be recycled, and
reported to the Central Bank where the greedy government will then
want to have their hands on the funds.

That's where you come in, since you bear the same surnames with her, I
want you to stand as her next of kin since no one else knows about
this funds in our bank besides me, and i don't think anyone will be
coming for it. I promise you that if you agree to assist in claiming
this funds from my Bank, we'll not bridge the law in any way because
I'll be your eyes and ears here in the Bank.

After all is settled we'll share the fund $3.2 Million 50% equally or
rather invest on whatever we choose. So I would really like to know
what you have to say in regards to my proposal.

Thanks
Mr. Israel Barney.
