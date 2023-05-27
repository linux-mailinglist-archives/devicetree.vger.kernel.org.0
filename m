Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA8571356C
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 17:17:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbjE0PRN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 11:17:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjE0PRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 11:17:12 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01781D8
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:17:10 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id a640c23a62f3a-96f7377c86aso319976766b.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685200629; x=1687792629;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=ieQxbE9A9YtF1izePXtJJJqSIzlMixzkr8VP/Lo6U4hV+x/DpmrkLnVXgnQtpYnpRn
         wR6NGjlNNAKjlWliA1+RwuiCfBUVELF/V/EmnCJHsE0L+0LsS4JNXQKvd8QfziKrzS/f
         JqK6Hmp64b2Jrx0b8PcIiZoeke+Y0bJuLRVCO98iT8aqBCru0RVMwd2kxAw6Z+Sd77Xd
         MoMiKRnRHXDBPA9KlsX1KiB2n4x3EPNOmPIszsZNeiypMzRqXtPZX109tTxDgprTmIpX
         2ZdYKYM27XPcYw4C5MiJDbsjEXK5Kbkvd0+3+DEI64shMKkM6vCX0tUCb4VdisYhZ5Pv
         2SVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685200629; x=1687792629;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=KOyrmLmEwpL1Z1b53h4rJKxOXJoefYtAf7YPMNY556rOn6AaK6u5DnoweqlrzkGt0I
         crO03FNO98gY2OIwY90MtIvqKnzuPSeYtcN3TZ7/mUmNf0M4dc75ZwzYQhGuW7ijB+d7
         PhSFhBdgYn8dNCThlcvvyj7DZcO9rfzFlBdFAnzW6YyCkulhNtbBnlZb/k4Hu//ifUBX
         9vCPPEQlyKrJ3oSteigywLx3gnZ5sL45Stg1RBIYafuLJONmHDpVuq7aTxitwH0o1SaQ
         joRdon9CY5i/rYd5R+mR5Y8ajFtO8hTguyJgwG9us1BL5s4pV5C7FzBkpPXqGkcLC/Ta
         rIcA==
X-Gm-Message-State: AC+VfDzE3M+/iY8VE/Wn2pQR2gpFoRpKxGxPzXZ4nMcW/Tw/gl3II45e
        CpJI46hoRkZCULjnRXEAQTAuAKc9Odh0iAzLXBU=
X-Google-Smtp-Source: ACHHUZ5WkHHXNHtFYYK+78/kB0kQWgPMBZpgPst2EYzxCKWuXsNNiEQX6RI1QxQZN2ou4pQyUr8JOJjFjNLgr4J22dM=
X-Received: by 2002:a17:906:eec5:b0:95e:ce3b:a471 with SMTP id
 wu5-20020a170906eec500b0095ece3ba471mr5451155ejb.55.1685200629000; Sat, 27
 May 2023 08:17:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a98:d914:0:b0:1cb:cec0:ab8d with HTTP; Sat, 27 May 2023
 08:17:08 -0700 (PDT)
Reply-To: dravasmith27@gmail.com
From:   Dr Ava Smith <daswas250@gmail.com>
Date:   Sat, 27 May 2023 08:17:08 -0700
Message-ID: <CAM1W4N63wsNmh8JOLokUdQ-MwEYh3LwyQ3RMnnuPBBmVAAGQpg@mail.gmail.com>
Subject: GREETINGS FROM DR AVA SMITH
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.4 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:644 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4997]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [daswas250[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [dravasmith27[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [daswas250[at]gmail.com]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.8 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
