Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FFEB4D643A
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 16:00:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236152AbiCKPBw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 10:01:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233951AbiCKPBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 10:01:51 -0500
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ECCF171EE9
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:00:47 -0800 (PST)
Received: by mail-vs1-xe31.google.com with SMTP id h30so9729806vsq.13
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=OZD6KXu0/6DkCWGxPHcUUj7jLh83t4i0P+4wK8zulTE=;
        b=Lt/E91zCXNPEQJlZLOuGnbs42oYmMs9DCIoVJ5ZcpayUXn+BQmqz8sg5eIs8el946j
         nM5lmXaum6R7md9/L4qu9nxr9dko0ipD+dnPksZJyVl/H9bDIRImnf7/WfYl83kbkT2r
         zNZG5pu5mjJgVpx6DJiVDnWN8u9yMEl3bsA51ZmyugZlJ6H+jzIgAvGyUs/d021Nlp5I
         bR4mlyVaV+FX2d+wyWDgFxgmhg5EpKIH4uvA6jsxdqgL/jf+j2BSJZ0mZvFJOny4ASq6
         5E9I1yvI0KzVIEYscILiN2lmWt+j14C4ElF62wJDmEpOADIe1LS/taQpfP/FhHq2rFVt
         wWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=OZD6KXu0/6DkCWGxPHcUUj7jLh83t4i0P+4wK8zulTE=;
        b=Rg2KaxIVnlil0svik7K3UvydDGABTgXO6HMbm4F7Ib3wxGdZxCw8aFCBvlbImIgm1F
         FBLrb2IScq8qwVE9LZELw819FphnMMpbNGVPZ/Wv+yVhbNvAKGUOlEEjUJRbxyb0XTKR
         aW48zXIKAhuLhyBLu3/FaFgycC5CvGWJS34kRf6tQZU90EqJ10rsdWl1FdPaYR5PC9U8
         6pSIr+9LphElM40RFn5zyXu9QJ+N8c/91Cb9gr8yKrnZRZp+ONwRB0LiDNtaH5kdOn9W
         kz1IlCmQrvwYQnQeYxoiWropbhMtz1rAVhmGtZNTbI+y3bHRm/eNTyZRyRB/oaFtrCC/
         z/VA==
X-Gm-Message-State: AOAM533TxtKTHSx3JWqiTcvChuSFROLyYkuL9RAvooGJ4lmiBLUglMok
        z1MswP0ccqKIG7h4iuqA5JPmHjglhZboYzHh1N0=
X-Google-Smtp-Source: ABdhPJzSqzaQuR9I66CDuQ0dSU+75mHzBuhDneIPf+Z3kzAaXRToAFM2+izEyB+4vmE3P8bMFSHQDci0HlEZvLXUWGo=
X-Received: by 2002:a05:6102:390f:b0:322:b576:db77 with SMTP id
 e15-20020a056102390f00b00322b576db77mr2970645vsu.29.1647010846325; Fri, 11
 Mar 2022 07:00:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:2126:b0:295:3795:3b5e with HTTP; Fri, 11 Mar 2022
 07:00:45 -0800 (PST)
Reply-To: susanraphel757@gmail.com
From:   mrs susan raphel <mrslindarail@gmail.com>
Date:   Fri, 11 Mar 2022 07:00:45 -0800
Message-ID: <CAGKBKgPtryx3tLrz0mpoegUANuN8WN4kHA5Zge40M264eh6--Q@mail.gmail.com>
Subject: Cry For Help
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.4 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,HK_NAME_FM_MR_MRS,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:e31 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5001]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [mrslindarail[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [susanraphel757[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 HK_NAME_FM_MR_MRS No description available.
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 

-- 
Dear Friend,

I warmly greet you.

Please forgive me if my plea sounds a bit strange or embarrassing to
you. I am 63 years old. am suffering from protracted cancer of the
lungs which has also affected part of my brain cells due to
complications,from all indication my condition is really deteriorating
and it is quite obvious according to my doctors that i may not live
for the next few months,because my condition has gotten to a critical
and life threatening stage.

Regards to my situation as well as the doctors report i have decided
to entrust my wealth and treasures to a trust worthy person. Get back
to me if you can be trusted for more details.

Sincerely Your's
Mrs. Susan Raphel
