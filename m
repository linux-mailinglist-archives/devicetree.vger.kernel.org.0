Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 349AB63951D
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 11:04:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbiKZKEJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 05:04:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiKZKEI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 05:04:08 -0500
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 550B51DF2C
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 02:04:07 -0800 (PST)
Received: by mail-ua1-x92e.google.com with SMTP id v21so1812273uam.1
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 02:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EkLKKfAR5wqmVPeCqMY1O7lAxo0pbmpK+QeQEKfcsQQ=;
        b=bK04kbaWtEp9qZUTCKzkiqEHQpWEuQhDTG7h/6vtA6/YWyIhJeemKvF7QFpcOVtlef
         yENI+ay/XSzx8WHRgtvlEu/hz1t9dh3T0mizDTwoyJ8FcgXpaGkeGuzv1q0Ucn/HD+r/
         pbFbtfMuVTDrnlP+YRrTnc+3qVaFUx1Ek/f0hVApNDvdUGwNQRTJJ+A+7G8J0YWSisc/
         AQUaklaajvLcZ4w6QQ3eWkm5xCglsrokW/pYyrTIBJc2orbmNHE+pZJ6yu8d6OYEDAMz
         dsBgXYmEL/sv16QUxfXrUSwwQfS8lsQOv6afm5IwWdO0NkXk4W+K78OGbQ83fuC8122F
         BoUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EkLKKfAR5wqmVPeCqMY1O7lAxo0pbmpK+QeQEKfcsQQ=;
        b=Rfh6J+N6fJX9KOpSShv/vWlByUK3SG/DyRr2275fH4P0OQ1k0HWH1q+mGRvkIShWcY
         wCUpyb1+GNEcYZSg0n2jA8bb471J3KUWcIFPVbqS6YVLnvAFlfkSnCxcfbAXqvJ2NI2J
         zQiim2rPvGkrVGOVgbpt/Q6nDej9oQpSiVeAfAnVbACPdGrRi5QDhSug+CsRR/kkgWJe
         nJoNiHMHX5yySpyik+rL7KOR+uPWnNGRieIksi1hNGiie+1RkJ0rhkjYqOsrcolcxL6z
         Ugdhx67ooL34Z8dae7ChkWGthxHcRltStgHVVDsyG4+lLl8v0iEr/PSIhGh4r8fjkMQc
         x9kw==
X-Gm-Message-State: ANoB5pkUZk2yHBdgokCVNdPLFfYiWxGraKN4jlO7NEVeS6Ge3bZk6wrg
        KB9SoJemAi6UT9u3hwb7ITC7U2RlcsE86sdIhtY=
X-Google-Smtp-Source: AA0mqf6NCXijAP8Ir1OjCaw19EQdmQs4hEoZiJfVQVqpM4aO6F+Ou5uQsEMNUl6W9ULIgnPf0WdMynRtWE/RXSpjsw0=
X-Received: by 2002:a05:6130:210:b0:418:d713:912e with SMTP id
 s16-20020a056130021000b00418d713912emr14957500uac.1.1669457046400; Sat, 26
 Nov 2022 02:04:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:ccf1:0:b0:32b:6ae5:1eba with HTTP; Sat, 26 Nov 2022
 02:04:06 -0800 (PST)
Reply-To: ninacoulibaly03@myself.com
From:   nina coulibaly <ninacoulibaly13.info@gmail.com>
Date:   Sat, 26 Nov 2022 10:04:06 +0000
Message-ID: <CACTFrC3dYA3pht=MJkK4csM9e9wsAn_SS5dXiwdJ0fQi0TQdUw@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.6 required=5.0 tests=BAYES_50,DEAR_SOMETHING,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:92e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ninacoulibaly13.info[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [ninacoulibaly03[at]myself.com]
        *  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  2.8 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Dear sir,

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
