Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 863B4573CDC
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 21:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbiGMTCF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 15:02:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbiGMTCE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 15:02:04 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 299E02B619
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 12:02:04 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id l2so9111002qtp.11
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 12:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=CAIH/48VCAZZUEhRpfaRPTSaBdpuCbyHyIV69iiJf1M=;
        b=pwqPXKv2DVmo31GK+XBzLJF02eCHgAAd5gQP9J31efj/4UFhytz9X3cRPddLeAH/Wd
         7KKuNRpAsjuANjjsH3IST3nvdE3wyedpPWvHRX8ctnEKsNyn8dLcz+ilI7z4NCDbS0T0
         PoAwwW/bQCeTXf+RKYzbLBE2pI7/Dg8vBBUj0RI1cnXTOIWHGApQcuVTm4JUkf0G5Hmn
         KAm1fW3dKj62X92xoAu9xHoqrwtXjlZa5+DRqyo3IIGjdi1wwfAB8qQOU7h8sinagi5H
         8G62RaGGWn6r+nYbfTaPJ4FkY4H1wdlObBPHtqKgQ4HCc8Dqco6zUfTw3Z2HHWldfZrO
         X+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=CAIH/48VCAZZUEhRpfaRPTSaBdpuCbyHyIV69iiJf1M=;
        b=W+OSmm6aMk5xGRY66yYkBO4x6ZZSb5/XaISGxlV6kFC9Y34Vwojz0hkSmaM7GQTieM
         YCyeWr2IxnRNzUgRpKmxvBaGcU+74e0smcKNN4Th7qrufD6/i2Mwvh8jibxMHgHIDLnO
         8MPsTE8HZUNzi7mE8IRJmDQzhClu7damFEGyBjb0dbVGq1BProWcB8f9WZFm6dlP7rzB
         h/3OZJ2Uygbc5gOj4BJnnH3XPj+hMOoDiHBYTtqq0j55COa0bvh2V1EQTOXIvXu4BRvO
         CE0m5MhXFQRCAwBzCM9fwrWs+GR1xynotVSLIw2E1PMYvsyz7DXZTth6riqQkGIOxvBH
         3J0w==
X-Gm-Message-State: AJIora8NQkIm17sY2W+2667D5cRMBw5oxtVZWgoqaIH566rtPGNBZ2RG
        4u+sY6ZnEsFFLn8vYQKlJJt4bK4hvOXjVX3yr44=
X-Google-Smtp-Source: AGRyM1usttsttryru0UFq0tJ8gpiDtUBIxfyfMSkFpbFp3zdh1/fdBKQrIU2R6J+yQErvWOKeZ7YrGjPViEwNV1QeoA=
X-Received: by 2002:ac8:5fc4:0:b0:31e:c4e5:971c with SMTP id
 k4-20020ac85fc4000000b0031ec4e5971cmr4478963qta.107.1657738922782; Wed, 13
 Jul 2022 12:02:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:5f12:0:0:0:0:0 with HTTP; Wed, 13 Jul 2022 12:02:02
 -0700 (PDT)
Reply-To: pstefanopessina80@gmail.com
From:   STEFANO PESSINA <wairimueunice826@gmail.com>
Date:   Wed, 13 Jul 2022 22:02:02 +0300
Message-ID: <CAJcX0a7RahD+fwB+qb2VQav4C5K836uXPyviphBBNuWFHSQ0eg@mail.gmail.com>
Subject: donation
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:843 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4999]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [wairimueunice826[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [pstefanopessina80[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [wairimueunice826[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.2 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20

Congratulations!
The sum of =E2=82=AC1,500,000.00 has been donated to you by STEFANO PESSINA=
.
Kindly get back for more info via pstefanopessina80@gmail.com
