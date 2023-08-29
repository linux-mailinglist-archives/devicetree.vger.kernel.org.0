Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEEC478BFCE
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 10:02:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233940AbjH2IBw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 04:01:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233912AbjH2IBs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 04:01:48 -0400
X-Greylist: delayed 338 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 29 Aug 2023 01:01:46 PDT
Received: from mail.corebizinsight.com (mail.corebizinsight.com [217.61.112.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A455A113
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 01:01:46 -0700 (PDT)
Received: by mail.corebizinsight.com (Postfix, from userid 1002)
        id BC65782C97; Tue, 29 Aug 2023 09:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=corebizinsight.com;
        s=mail; t=1693295766;
        bh=CEmchsDu5Oe+RNHCZSBmKSgMOuy1xnO2dydqkEjt3Qs=;
        h=Date:From:To:Subject:From;
        b=eQ8OVtEtcljYgvl4X9+YNZyxQRL9dXjHpA6keycvKHNNrH/Qd8BfzSyrLVNro8jV6
         +JsXFjImwwqulDbMySpDIShcIC/hZJTB9TA9oQvTsFNN200iIY3ugA6ThADyA/YlGZ
         UbLbi6lJOcMptOwIs5Pzao64xu4F8c8U05JbrF5C1JXGSlN3uzIef1Qwb/UI3XR4Ld
         72paOPyX1ieNQ1zgJGgoncFXZu/5ukdD4YlI6oVeefjRl9D7mb/jL1LKy3bFD+cDQj
         hE7/MLtby+7JqnRTr+k6gn8T8UPLos395mbAQTwf5RV+3rE792jJS7/o5h+gGOMTpd
         6bhyv/2axd55w==
Received: by mail.corebizinsight.com for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 07:55:31 GMT
Message-ID: <20230829084500-0.1.g.171f.0.7kqc0pni9u@corebizinsight.com>
Date:   Tue, 29 Aug 2023 07:55:31 GMT
From:   "Jakub Kovarik" <jakub.kovarik@corebizinsight.com>
To:     <devicetree@vger.kernel.org>
Subject: =?UTF-8?Q?Pros=C3=ADm_kontaktujte?=
X-Mailer: mail.corebizinsight.com
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=6.0 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_FMBLA_NEWDOM28,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,
        URIBL_CSS_A,URIBL_DBL_SPAM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: *  2.5 URIBL_DBL_SPAM Contains a spam URL listed in the Spamhaus DBL
        *      blocklist
        *      [URIs: corebizinsight.com]
        *  3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus SBL-CSS
        *      [217.61.112.124 listed in zen.spamhaus.org]
        *  0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
        *      blocklist
        *      [URIs: corebizinsight.com]
        *  0.0 RCVD_IN_DNSWL_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
        *      DNSWL was blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [217.61.112.124 listed in list.dnswl.org]
        * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
        *      [score: 0.0124]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.8 FROM_FMBLA_NEWDOM28 From domain was registered in last 14-28
        *      days
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dobr=C3=A9 r=C3=A1no,

Je mo=C5=BEn=C3=A9 s v=C3=A1mi nav=C3=A1zat spolupr=C3=A1ci?

R=C3=A1d si promluv=C3=ADm s osobou zab=C3=BDvaj=C3=ADc=C3=AD se prodejn=C3=
=AD =C4=8Dinnost=C3=AD.

Pom=C3=A1h=C3=A1me efektivn=C4=9B z=C3=ADsk=C3=A1vat nov=C3=A9 z=C3=A1kaz=
n=C3=ADky.

Nevahejte me kontaktovat.

V p=C5=99=C3=ADpad=C4=9B z=C3=A1jmu V=C3=A1s bude kontaktovat n=C3=A1=C5=A1=
 anglicky mluv=C3=ADc=C3=AD z=C3=A1stupce.


Pozdravy
Jakub Kovarik
