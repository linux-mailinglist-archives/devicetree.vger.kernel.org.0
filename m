Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E33155C98E
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:57:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbiF1DQ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 23:16:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229711AbiF1DQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 23:16:27 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 638391B78F
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 20:16:26 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id n10so9927736plp.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 20:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=SLNRSXyYRsd6aNvQEIS7NIF4Za1XnoeqJ9TKbdyNnf4=;
        b=XJvzRYwMdiDND7qoICsnOKpYPlIazqF8Z6VkC96n9ESn6x2ryv8W2LqE4vmkHqMNlV
         IA7YczcAhdBwJrL0PpWdpWkqODlWtXPK9V30uuEpMwQE+SeIvnOtZeA93VzvLE0lvK9m
         8/6nAUW9Jrfo3jWa5fi17vk8zexTuGLPG1+5LoX3QQzCEQM0KSvJj/Ktl/6BYG2B4fQl
         DDNrz3vvNroqRxAFtzmCJ34A+sVpLlpCnOyc1O9gVVQK2xRCTeGPT8ZIcj1tgkYuv4Lg
         8XTZo2+cIXf+uN5SnItN/DNVOJgC4WYpmOXGjcUa8tGs666ojxBVXqJIKHTKaQEsC2qg
         33Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=SLNRSXyYRsd6aNvQEIS7NIF4Za1XnoeqJ9TKbdyNnf4=;
        b=dUL/ylMYYRMOkpYtnoMYYCIjj5s3HJk47Q3+h4lWr7kV2R12a3K58yV4wZ2uGoDRIM
         ngHZRyqAl7EdYyAtPuk3C5x6irPz5YHEJnJI6u1AicBgXQ645SXMdzprLiieeqLky7LK
         cccTln+pRvGxLKf3HqOYfb0Wht5WSgw49/Vx24wLQt5da99Xbf94ZgaxjO9umPvAUHr3
         8hbQ8a7qHiPUe0VJ0OKzgklA9sAmGi3yqTqJnOgsqekpXKG37XFUfzfnOFbBspkAMPPm
         Tk4DwNC/jcFYJBXVtGDgu/YbwzroCnRqAg15QAQfJ4zJclT0Pq+0zHYs3kJTLnnZE8Sr
         qE4Q==
X-Gm-Message-State: AJIora8vV/+lEojWKz7xzsyE70XM61uNcIFOE45eOehVjLLNFCnYOIUk
        2BwCiHnfCzoZtq07anRHFvm7Cfn/p5wgqZfOYg8=
X-Google-Smtp-Source: AGRyM1sdXJ781HlCu07kSqKoo2SbdHHRlPmmCwV9QtVjaaVRatOAWgynta+ZCJgR+ZjLzHOf4AMXAXDFq39Htwdyepo=
X-Received: by 2002:a17:90a:f015:b0:1ec:80f4:59d0 with SMTP id
 bt21-20020a17090af01500b001ec80f459d0mr18961643pjb.57.1656386185807; Mon, 27
 Jun 2022 20:16:25 -0700 (PDT)
MIME-Version: 1.0
Sender: ndaglayajohn@gmail.com
Received: by 2002:a05:6a10:844c:0:0:0:0 with HTTP; Mon, 27 Jun 2022 20:16:25
 -0700 (PDT)
From:   mrs marie brigitte prouvost <mariebrigitteprouvost332@gmail.com>
Date:   Mon, 27 Jun 2022 20:16:25 -0700
X-Google-Sender-Auth: 2Eiu7VozajCRrbbcK1gmKNFOzeo
Message-ID: <CAKucxWXnx7EM5voGsftdOkRK_cFLCLEgwaJZQtPync6fwW0B5g@mail.gmail.com>
Subject: Dear Old Friend
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        HK_SCAM,LOTS_OF_MONEY,MONEY_FRAUD_3,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:629 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5004]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ndaglayajohn[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 HK_SCAM No description available.
        *  0.0 T_HK_NAME_FM_MR_MRS No description available.
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  1.0 FREEMAIL_REPLY From and body contain different freemails
        *  2.5 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  2.9 MONEY_FRAUD_3 Lots of money and several fraud phrases
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I know you may have forgotten me, I am very happy to inform you about
my success in getting the money transferred under the co-operation of
a new partner from Venezuela.

Presently I am in Venezuela with my partner for a better treatment; I
told you that I rather die than to miss this opportunity. Meanwhile, I
didn't forget your past efforts and attempts to assist me in
transferring the funds despite that it failed us somehow.

Before my living Burkina Faso I left a complete sum of Nine Hundred
THousand Dollars
with the western union money transfer to transfer to you as your
compensation.

Now you are to contact the western union for them to commence on your
payments, Ask them to send you the nine hundred thousand dollars which
I kept for
your compensation for all the past efforts and attempts to assist me
in this transfer.

Here is the Western Union money Transfer section

Email. westernunionmoneytransfer.WU@financier.com

Remember I have already forward this instruction to them and they will
be expecting you to contact them to commence on your transfers.

Bye and stay bless.

But never forget to inform me whenever you received all your money
because I have paid for the transfer fee.

Thanks and God bless you

Sincerely
mrs marie brigitte prouvost
