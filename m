Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB68784CB6
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 00:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbjHVWJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 18:09:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230246AbjHVWJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 18:09:34 -0400
X-Greylist: delayed 903 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 22 Aug 2023 15:09:31 PDT
Received: from symantec4.comsats.net.pk (symantec4.comsats.net.pk [203.124.41.30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E2CCCF
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 15:09:31 -0700 (PDT)
X-AuditID: cb7c291e-055ff70000002aeb-f9-64e519aa273a
Received: from iesco.comsatshosting.com (iesco.comsatshosting.com [210.56.28.11])
        (using TLS with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (Client did not present a certificate)
        by symantec4.comsats.net.pk (Symantec Messaging Gateway) with SMTP id 0B.E1.10987.AA915E46; Wed, 23 Aug 2023 01:25:14 +0500 (PKT)
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
        d=iesco.com.pk; s=default;
        h=received:content-type:mime-version:content-transfer-encoding
          :content-description:subject:to:from:date:reply-to;
        b=SISv8nyOckdBbo26KIv1HfIrPc2tXXRAJhrk7m7kkpCABjiPTmU/F34s0QLFboITk
          i2M0bHUwgNLnx2R0sqMLqiqwl6Gs/DVWiXFrliZg6iZzchINOTyiUSjXCbILdZeLh
          A2wqKAb25kCM8D6jAvHVUWo1dJOvbUdtEIcLibeHs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iesco.com.pk; s=default;
        h=reply-to:date:from:to:subject:content-description
          :content-transfer-encoding:mime-version:content-type;
        bh=GMzYzcyTxDsE6wX/XHG6MHqAdAiHrhqbmmLQ/TZ1QnQ=;
        b=dkRfkKa4UnHMO9ZEHyJW4FWPVoL8ermxbGBCfllHC6NBMY0Z2yCI/3h3q/FsBlJrj
          Gxcz9MA2Dy/xWuND1lil6Q7vdae891DrlUoy1ssPGcUT/qocD1iek2R3xYR4wvbyC
          RuOxcGksO26RJS75BguA4Uud0XNqK9jo5lWU0njTk=
Received: from [94.156.6.90] (UnknownHost [94.156.6.90]) by iesco.comsatshosting.com with SMTP;
   Wed, 23 Aug 2023 01:15:30 +0500
Message-ID: <0B.E1.10987.AA915E46@symantec4.comsats.net.pk>
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Re; Interest,
To:     devicetree@vger.kernel.org
From:   "Chen Yun" <pso.chairmanbod@iesco.com.pk>
Date:   Tue, 22 Aug 2023 13:15:44 -0700
Reply-To: chnyne@gmail.com
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDLMWRmVeSWpSXmKPExsVyyUKGW3eV5NMUg5kbFCzmHznH6sDo8XmT
        XABjFJdNSmpOZllqkb5dAlfGknUXWAp2M1e09S9iaWB8zNTFyMkhIWAicX35GrYuRi4OIYE9
        TBIb1q9iAUmwCKxmlji/1QEkwSLwkFli3uQ2qKpmRomeSd2MIFW8AtYS/bevMYPYzAJ6Ejem
        TmGDiAtKnJz5hAUiri2xbOFroBoOIFtN4mtXCUhYWEBM4tO0ZewgtoiAnMTNr3fBWtkE9CVW
        fG1mhDhCVWLx9+lg44UEpCQ2XlnPNoGRfxaSbbOQbJuFZNsshG0LGFlWMUoUV+YmAkMt2UQv
        OT+3OLGkWC8vtUSvIHsTIzAMT9doyu1gXHop8RCjAAejEg/vz3VPUoRYE8uAug4xSnAwK4nw
        Sn9/mCLEm5JYWZValB9fVJqTWnyIUZqDRUmc11boWbKQQHpiSWp2ampBahFMlomDU6qBUcDp
        tVft0pIsP6abT5qUjrm/eiDEF7wt8g2zi0Gs0bVHzsyR79cd2nLfv/aWMOe3jEctV3SLDDKc
        2x6XbLT+neBiKfhlc9e+rtubX96UPVamvEOLY8r74CThDsHG2Wt37FFKTzTcZtuwqTDt85e/
        hV9LMrVZK7j3hHzc8Lvko8EaJn6fHoFLSizFGYmGWsxFxYkA2dhIEz8CAAA=
X-Spam-Status: Yes, score=6.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_REPLYTO,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was
        *      blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [URIs: iesco.com.pk]
        *  0.0 RCVD_IN_DNSWL_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
        *      DNSWL was blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [203.124.41.30 listed in list.dnswl.org]
        *  3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus SBL-CSS
        *      [94.156.6.90 listed in zen.spamhaus.org]
        *  0.1 RCVD_IN_SBL RBL: Received via a relay in Spamhaus SBL
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Re; Interest,

I am interested in discussing the Investment proposal as I explained
in my previous mail. May you let me know your interest and the
possibility of a cooperation aimed for mutual interest.

Looking forward to your mail for further discussion.

Regards

------
Chen Yun - Chairman of CREC
China Railway Engineering Corporation - CRECG
China Railway Plaza, No.69 Fuxing Road, Haidian District, Beijing, P.R.
China

