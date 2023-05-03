Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66CEB6F4FA4
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 07:07:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjECFG7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 01:06:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjECFG6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 01:06:58 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72FF0198C
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 22:06:57 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-559e2051d05so58832377b3.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 22:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683090416; x=1685682416;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IJv/fJ1N9jilF17E3JtERDb5lS97I4U+7QcLu+oqNwQ=;
        b=CUJSw3+1Gp9rhRpS9vWKNBnMRQmo3Sme+NW/2ly0kfzlYwyrauNs6LRUH++E7IR3I1
         XgGele6PD1UKKjBMP6MgDTzASxeIjpb9BwrNahvJ2MI9al8WXuzSnzCVzSo+7A6ndxYj
         sibFl5MLVX0F3XqA3R/0pn7nLAuLSYVFGbwv34k6mS68qEj9Kt0HrZry5a2RFhqdKUYN
         x5/mBLY7HZ2lMfySVAXJAo7iPIycGZvJ5ecl0phrPkDpbtex21ouF0jOXJfs+6FyE9Q+
         FaORrfwVd/S7B4JxlKcWRp3d9pxuJcs5jSfHClrUP+ucWfV5/Ec+FGJjIAs5INudVyjr
         3DYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683090416; x=1685682416;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IJv/fJ1N9jilF17E3JtERDb5lS97I4U+7QcLu+oqNwQ=;
        b=BlbrgvqtrtLab6QYC2Nn1vSYJivERyMYabXl3MiRFdC2GZMEJGSYFYS9ZM6NbADRkp
         SPegPkymDZjlOsG07ZeXLaO1yl1jL+ixXgS2J016XoZyjq/2F431Fd8yJalsGNOvUqi2
         2hIc6LNV1ZKMqCbZiuoH+0ZqI0Hj8/YdQYje81DnETe0y4+w7kx4H/+cTinSS26kTTMO
         BuEp2qtRUjnJRCBf786TyIAhcvZfSBWMP7mNF1J/5alSRSmAhP0PaQ6m9jauwx9maGYS
         KOpcxQUEO9R5NZF9nxmbY8tsSoTNkcrG9SVFxa4woFT+igPy5a+VhxhB5rAVE+tufJyE
         EZOg==
X-Gm-Message-State: AC+VfDyjTCaSQFsex4E68Q0RRBLUdY4EUPVbssed6wAlczrHUJ/TV5HB
        SYeYSef5sfWOH9FW6MObZCIOHhV9QzNF1uKDgGM=
X-Google-Smtp-Source: ACHHUZ5nEL0JZ1MQic+fD9IScSV08loR0lkZs/OwesFX4BUjSXzSj7iy08ty79dFb862jnjF8iHXS3yzrDOeUfyUwg8=
X-Received: by 2002:a05:6a20:ce49:b0:ef:c5b6:b6ae with SMTP id
 id9-20020a056a20ce4900b000efc5b6b6aemr18889324pzb.25.1683090044124; Tue, 02
 May 2023 22:00:44 -0700 (PDT)
MIME-Version: 1.0
Sender: imrmusa2@gmail.com
Received: by 2002:a05:6a11:385:b0:449:c01f:1dd7 with HTTP; Tue, 2 May 2023
 22:00:43 -0700 (PDT)
From:   Mrs Bill Chantal Lawrence <mrsbillchantallawrence58@gmail.com>
Date:   Tue, 2 May 2023 22:00:43 -0700
X-Google-Sender-Auth: CePssoEj969bnhxLH1gFHLXnWR8
Message-ID: <CAJrgSbNQkJYqcwO4FCRc_G1KT=SEseuui+KJ6sju+oPxseXarg@mail.gmail.com>
Subject: Hello Good Day
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.4 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,HK_NAME_FM_MR_MRS,LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was
        *      blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [URIs: email.id]
        * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:1135 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4997]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [imrmusa2[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [imrmusa2[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  1.5 HK_NAME_FM_MR_MRS No description available.
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  3.1 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Good Day, You have been compensated with the sum of 3.5 million
dollars in this united nation.

The payment will be issue into atm visa card and send to you from the
santander bank.

We need your address and your Whatsapp this my email.ID
(mrsbillchantallawrence58@gmail.com) contact  me

Thanks my

Mrs Bill Chantal Lawrence
