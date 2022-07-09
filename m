Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0395256C850
	for <lists+devicetree@lfdr.de>; Sat,  9 Jul 2022 11:21:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbiGIJV4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jul 2022 05:21:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbiGIJVz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jul 2022 05:21:55 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34B0655B9
        for <devicetree@vger.kernel.org>; Sat,  9 Jul 2022 02:21:54 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id h23so1309326ejj.12
        for <devicetree@vger.kernel.org>; Sat, 09 Jul 2022 02:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=TKvyPiNZ+anjmYa10tWJwFVa+LgbgMa6tcU0LfkkBNI=;
        b=JxG3TZxrFupuqem168nYjoI/uv/FbEzIEKid4tcKq0nEJD3L9O+d+y817IpZn82dGw
         P+5wDycX3HnScgPOeFETRV14zKUBqsYTcGkBVbmvVe4zUW47KlImeVTbAG9yJ9E343ON
         /mMmJhPSEnEEoQ9XnHDw2ef7k046qCS9n5SMPv1mojvyGQ623CxwktpabQjOKlNd8Jqv
         sSkXm6Yl9pRJPTWq0s1USBSr+9oiALnfdTOxMORZauwXAfcA2ZXQxgx73BTzrWUDtQjJ
         UZpsaqkWMHkaylhpMMzyageX4vNAkVBUfiviTSgySGBOl/l4OASGH6QMkiguXGwlfqZe
         +LGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TKvyPiNZ+anjmYa10tWJwFVa+LgbgMa6tcU0LfkkBNI=;
        b=gp9aqn4kd2pIWt6OxO3ptnkEABX/23OB46T81RnOnchCQ0gLKfAGVdRPeUP5ZaBxsH
         TPO88+8hL+OMZZSi12y9axGN2q/TPklPrfoM8UCt6Z+1PM/jG3jf77ax0Fpggpbc94tA
         6MKoc9J4f3ZoJ3cHWBoV3N2+yZBr8GIvut0Ng+1spaxk+WDT55jNSdkIgjQReQDycnQf
         Da6kAJtdBk5Gx6jqOx+dAapUOp6P6UrwYsbN0GwUKQJHcOa13OT2uXkh5HTZKZKCqQLa
         DqskGjEpr+2Mwjvj2f5pa/zdbTKJ4jNysG3lnOxDzw22GbYhUN6IxOtluKhOhq3TDCx5
         6rrA==
X-Gm-Message-State: AJIora94jsoYKntJn0XL72MgKapdmBkuUODsucRTgcd4nBw7I9nK3UYe
        ptPkge4w1n5+EpaAY2HoH5RHjMXLbW12TVU1eKE=
X-Google-Smtp-Source: AGRyM1t7HZ1QYDKMinnV6ykOI9P2A5vsJtW8gbz78tMl+dTsr1pKQPZ4VdxjEeSNs+2mqp4DpgFGu5EgZxmY6jr94Ts=
X-Received: by 2002:a17:906:149:b0:711:fca6:bc2f with SMTP id
 9-20020a170906014900b00711fca6bc2fmr7778617ejh.497.1657358513168; Sat, 09 Jul
 2022 02:21:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:a40c:0:0:0:0 with HTTP; Sat, 9 Jul 2022 02:21:52
 -0700 (PDT)
From:   John Jacob <jjacobvsusa@gmail.com>
Date:   Sat, 9 Jul 2022 12:21:52 +0300
Message-ID: <CAKZDKkAWcLPMtwY0s-SkFUxdvAKoq4V=yfp0AVURseT29+qKEQ@mail.gmail.com>
Subject: Confirm Receipt
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear,

I am Daniel Affum a retired civil servant i have a  business to
discuss with you from the Eastern part of Africa aimed at agreed
percentage upon your acceptance of my hand in business and friendship.
Kindly respond to me if you are interested to partner with me for an
update.Very important.

Yours Sincerely,
Jacob John.
For,
Daniel Affum.
Reply to: danielaffum005@yahoo.com
