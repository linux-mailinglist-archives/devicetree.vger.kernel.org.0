Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAFD5006F4
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 09:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240379AbiDNHgs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 03:36:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240370AbiDNHgs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 03:36:48 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BCF4B47
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 00:34:22 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id q20so2494587wmq.1
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 00:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=KeMi8W+p20zdR41YZoRj2EapY7imNsLYkAgQIQsIzqY=;
        b=ZSyVl+ze+9OCHR+mC7bKpoZB8zAjJtZb3cjRoecDIu+T+eTBVmv1k2hpIKvSfGX9LV
         FGdMW2jORj5xj2UJwpsSk21zSBV9biudWkVj8cttDmc2pK3jFeLOGvzxUwR5/SxEPNmV
         u+OIGEzKIwi9Pwfr+BNdXiz3YCODn5ovtQQJNSK5vrL0y4MnO6n9Lw6IlN8JkrQYTHDu
         pSGfwnNJrTHS0dIIYQyr/0ubmNVF3ZVZ7bhfYWbzJylhsouMoa6GiE/lq6vLsRLJcqOk
         U4WGYvNSteo5DKoajkc/b9gp6gw+mhMigqDVXvF//aeF5cAw+oqFtnl2lY+VYpcph9FX
         gUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=KeMi8W+p20zdR41YZoRj2EapY7imNsLYkAgQIQsIzqY=;
        b=SKtsAAzjQkMrnlel4RF78DSEkvfcAHeDffVVIN09HOXLRjuI0ngVbJcO9PTOjxoimo
         SfTZFeZTF7hki1qe1vOGGs8P2IasQOC+ob9ZVzumsHQIFtCZC5aw8o4q/qqOz6K0oMrB
         f5T0tYIBOQbA/G6fGk7+q9TvOAFUH3N+IhNYjB+QqWyqS8yWrBoYME+D3AH54Xeu8BjJ
         nbUBXEyZqyTCnsvl545IG+PF+XKpspWCKYMs3OMtY3dZKVf0k67PwbOeDw53w6fRRT7f
         PfBeDJ7avuuTsEJQbAJlq34UkQLm0o1Tf0OhnuxhaOheL+LEB2fEB6aoTvsTPUm8Dj7t
         1tRw==
X-Gm-Message-State: AOAM533ltaM5zm1bRlhb6yz6J6it0fp5qKAVXTsQo5FWGgZkQES9EjnJ
        hkD7OG5Wsku6zbqnVYwm++Ielu7aqlo2xYFuyQ==
X-Google-Smtp-Source: ABdhPJzAk3/1pbfniNfYT03+eWWXl9kPkTLYoNLCc2HC7MtvPAILJ4Uvu9fY7EORUVOSDN3q87QPnDKla6pPDdVIfWc=
X-Received: by 2002:a7b:cc0d:0:b0:381:220e:a3a0 with SMTP id
 f13-20020a7bcc0d000000b00381220ea3a0mr1859448wmh.59.1649921660958; Thu, 14
 Apr 2022 00:34:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:64cb:0:0:0:0:0 with HTTP; Thu, 14 Apr 2022 00:34:19
 -0700 (PDT)
Reply-To: danielseyba@yahoo.com
From:   Seyba Daniel <ouedraogoissa.bf@gmail.com>
Date:   Thu, 14 Apr 2022 09:34:19 +0200
Message-ID: <CAPdK0pZexGtjySoF5bV1mZ65p1Pcj+sM_g4xVedgc210-vCVWQ@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:342 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ouedraogoissa.bf[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.7 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I am so sorry contacting you in this means especially when we have never
met before. I urgently seek your service to represent me in investing in
your region / country and you will be rewarded for your service without
affecting your present job with very little time invested in it.

My interest is in buying real estate, private schools or companies with
potentials for rapid growth in long terms.

So please confirm interest by responding back.

My dearest regards

Seyba Daniel
