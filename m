Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AD6C57FD7C
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 12:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231623AbiGYKbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 06:31:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233992AbiGYKbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 06:31:03 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AD1C2BF7
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:31:02 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id bn9so4432011wrb.9
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 03:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=c0efiEkVxtTkTFENAKnUNGf6D7Eoa+H/DnhrKy6xKHg=;
        b=Atf5Sc5rCOJsmUS2qWZFCQOVdEhMbxWZTVygVwG6MFhmUPsC1N7/gYKvngdjpdoEAp
         Dj4LLgJT1n2RVuuZHxMLJa6ctougQymX7kwmeuv2XduvP9BIjwFr6xDDAbIFBeddVKim
         NDMAl58Vs6Ws0S5NT03ZbAiqOLW3MDggeuFp4XDdp+Ig6Ojm6o2RhlJZTjxcz7y38l5t
         uXWOnzOT7P2OX1R2uOsoNqhihx2rU/5CJ4oWyDoY42p99+J21ZSxWnCREbQBNIFn3JNU
         ASoQ9iRdvK6qpuXMKHribLIppwbXZEqlgpLOHrEFON9IvBufE3XfDmc4P9xApTbw4TIr
         xMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=c0efiEkVxtTkTFENAKnUNGf6D7Eoa+H/DnhrKy6xKHg=;
        b=BRaBe2WXJ/PYmfm2JmwN67FMV2TJL6JnEY/FT1+kWxBU98aNbX4+P/yQmXelJ76/s6
         ask6FbEwQRKjie47QS2cJPj6KdXdf6Xmr+n8r15Q6WIjL9xZoUQnVr43rvW7GmIj8rM4
         7zXURLxYWcM3F2jgZ81Bg/WaVSh9kfNqQ26i44h3S59dF/mpbgPZwPCH0KBmdNTYqmCe
         zfGxEi06EyZKbypxdl8XiKMCbfaSDpbx76t60NyBxbYruFCwP9rI9z/3CXR0UInc2KIE
         LJyJ3x+eylbeAUxpyvqXtskOzN1VED2QszgqBrLme4PziaGhjWhynETuIFBdy7Q90vsL
         I/Ag==
X-Gm-Message-State: AJIora8k4mjsq84vVWLdiiXANYjft6y8FlqGSJMEx7OZxV4k9e8GSyrN
        iH0bUiPdXBrr3fxh/wI5vhk6IDYL5oYR1O47cBs=
X-Google-Smtp-Source: AGRyM1vK4IQRl+g1ytDQLqDauo9Bs7pje0HCtF2ZNjXTwwhCOgLqOycSW+kQOslRua41V/NXxr39t7vK929eGBQJjOk=
X-Received: by 2002:adf:a313:0:b0:21e:6db0:df7f with SMTP id
 c19-20020adfa313000000b0021e6db0df7fmr6800626wrb.387.1658745060580; Mon, 25
 Jul 2022 03:31:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6000:2aa:0:0:0:0 with HTTP; Mon, 25 Jul 2022 03:31:00
 -0700 (PDT)
Reply-To: alimaanwari12@gmail.com
From:   Alima Anwari <khuntamar5@gmail.com>
Date:   Mon, 25 Jul 2022 10:31:00 +0000
Message-ID: <CAOdLAAJNDdZoovEVDQR4aM5B1fNrtPBEAzrwrepVJM8KCJW5Eg@mail.gmail.com>
Subject: Greetings
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:432 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5002]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [khuntamar5[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [khuntamar5[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [alimaanwari12[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello dear friend, i'm Alima Anwari from Afghanistan, please reply
back to me and have an urgent issue to share with you. I will be waiting
for your response.
Thanks.
Alima.
