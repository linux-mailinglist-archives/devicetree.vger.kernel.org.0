Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC7A56C23A7
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 22:28:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229746AbjCTV2z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 17:28:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbjCTV2y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 17:28:54 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09A6040EA
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 14:28:24 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id ek18so52293332edb.6
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 14:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679347616;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FCRUBSFWfUJdlaStN+qT+zl8FTW7qoCRSrif9+SCGaA=;
        b=ESQ4ewa6+vj9BQ0gdCYlzOTVEiwB7YTLhPMV5KANPvOeHQYJnJ2Lkd4Z7RMSgNEY2i
         IRif5ezZfPhSr57B/QpZgUzqNfs/ksqVHAE/MekEWq5vEUD4f9IvYTbhl2DDS7WNP0qq
         OxFTPJrXDFsACAEcSmGah0PQVJlCjuJGZHrFE+ac/clVrdVHN5+3Zisnx684dITqHVuu
         43SLXYjKvwa6qOjwkkNc3sKMQVQn+/fLoxsf/srwkfNaYDMjwADU/PJdtMFkiw3KoOfk
         6IK+9bHw71VuMqiBm2QZlJbyyMc5jqEM+Q7aTZRn9qFv2F35vlQ7qQ+50a0NxTlcFzO/
         KFbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679347616;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FCRUBSFWfUJdlaStN+qT+zl8FTW7qoCRSrif9+SCGaA=;
        b=ODmSCjN3UKE8nsPsl4SjMLFybHu3HlhaCuNpdLAm3S6RFAF4TNwwZcjeaVPjJ8gy8I
         Hjb/uzKREzwaH/nDY6sPA7rtRLuxJFy3tEF1lic6fnKbxMfJjKf+7xDF8Word1+NzJyP
         BEE5fJ6QPiFfrLy0hVJkQMxKPwg+eVjK2YSiHKREa673j+wUeMWH6lfC5HVMSp1Eqorj
         q24U8q/248HVkPrmCrwbgXWLA8mBLOlOWjv+GC2Y/pIqUcMdnpBRU6fQXRLp9RcEmb9W
         7QfpXB6YXUz5s/MSKqNEF36fDcbXPY3MFc7HHwWangePAyHTa+d/b6bTLqv4DIP5RHOT
         5fyw==
X-Gm-Message-State: AO0yUKUDaslcc56tFfWt9hL+YEYEQZqjE26knZOUoBDlhTvn38FN5wI0
        2Ik7+CqL+keq7OaD45nDQ/qrDLoY44Mi9pGGOc8=
X-Google-Smtp-Source: AK7set9dQOk3tZ8tei8NNxXtFnawCFYjJK6d2IEK9eDhSUC4VohmXwSxkj6tdkOdC1ev+Cmow2odwN1PlaopCT6wuGk=
X-Received: by 2002:a17:906:2cc5:b0:931:c1a:b517 with SMTP id
 r5-20020a1709062cc500b009310c1ab517mr239118ejr.3.1679347616075; Mon, 20 Mar
 2023 14:26:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7208:c41d:b0:65:6323:deb4 with HTTP; Mon, 20 Mar 2023
 14:26:55 -0700 (PDT)
Reply-To: lilywilliam989@gmail.com
From:   Lily William <amina570073@gmail.com>
Date:   Mon, 20 Mar 2023 13:26:55 -0800
Message-ID: <CAEQd_CtwMmfVoJxd2rZnJVUGQVPyjsZ9OV0AetajKmLCNu11jg@mail.gmail.com>
Subject: Hi Dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.9 required=5.0 tests=BAYES_99,BAYES_999,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:535 listed in]
        [list.dnswl.org]
        *  0.2 BAYES_999 BODY: Bayes spam probability is 99.9 to 100%
        *      [score: 0.9996]
        *  3.5 BAYES_99 BODY: Bayes spam probability is 99 to 100%
        *      [score: 0.9996]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [amina570073[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [amina570073[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [lilywilliam989[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dear,

My name is Dr Lily William from the United States presently living in the UK.

I hope you consider my friend request. I will share some of my pics
and more details about myself when I get your response.

With love
Lily
