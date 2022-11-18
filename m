Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B07D62FCE5
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 19:41:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235344AbiKRSlT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 13:41:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235316AbiKRSlS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 13:41:18 -0500
X-Greylist: delayed 1802 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 18 Nov 2022 10:41:17 PST
Received: from yutyjpcm.nojakebraking.com (yutyjpcm.nojakebraking.com [88.209.254.251])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 434B01E701
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 10:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=nojakebraking.com;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To:Message-ID; i=shy.mar@nojakebraking.com;
 bh=BhL8rJ0j5WZHRHFzM943rgUS1t4=;
 b=WOFXUxqQExWxp+YpBVazMquIsaYy1R3ljb5waOn8IuARMQi4FncNoBPCqrYBH2plnMYbUSbd0veS
   FiHb/3vVuycUiXO14k1dcOKn0oJCx7IfEsIpr6txQD0naKNCC4K8SNcNsbaYAmXI/negA15fecRU
   kZAwxT7GzqQcGuvMfkIhVbpPaCd7HDEla7lGMD0+077LweXkBs4ATOvCzA/gOF6Izh4Px6pkTMs6
   jb9g/tGZ8C9BfEp1CFdV5TGWuOIPPfnpR2a1OO5i+GP1oNkwq9D24Qz/tckF1g+veIbxhBYKBrWn
   UfvJ9gE1XvlwdBFxH9faPL1Q309h8enaM+blGg==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=nojakebraking.com;
 b=TG9K5lTPeCOzbWfPTM2+CT5FEjuNs9+aRQuqsSwVb9hOTGYu8M/UE8c69f09MR4U2kk0rmVE6LOo
   25RpizjONrSyI56yZ+07exgM1AxpZq5N5ZrYCP8IQUEU9BrD/F1VdNsWFAGl686670bIUSUt+2ur
   YmbxEKwscNNwiHKskG/4cPfeA4daOVr3WFJSvplMLRZIUTAFbF+vMOb3fNXHjWwcibZyLxTteIMA
   Qmulpx1sn5mPJ6zj21aowBkuhSbJNsA2KcX3QCV99hYwx5/L5MlVtBfTQWkvRR2jpppSwPHRgoLj
   Jhdb6PLxEbRGQM1MxNWXKJAp2oHdVG/dDcjiHQ==;
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Re:
To:     devicetree@vger.kernel.org
From:   "Mr. JAMES" <shy.mar@nojakebraking.com>
Date:   Fri, 18 Nov 2022 10:11:11 -0800
Reply-To: jw0622254@gmail.com
Message-ID: <0.0.0.5C7.1D8FB7924A93D50.0@yutyjpcm.nojakebraking.com>
X-Spam-Status: Yes, score=6.8 required=5.0 tests=BAYES_99,BAYES_999,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_FORGED_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,HK_NAME_MR_MRS,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  3.5 BAYES_99 BODY: Bayes spam probability is 99 to 100%
        *      [score: 1.0000]
        *  0.2 BAYES_999 BODY: Bayes spam probability is 99.9 to 100%
        *      [score: 1.0000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [jw0622254[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  1.0 HK_NAME_MR_MRS No description available.
        *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello, =


I'm James, an Entrepreneur, Venture Capitalist & Private Lender. I represen=
t a group of Ultra High Net Worth Donors worldwide. Kindly let me know if y=
ou can be trusted to distribute charitable items which include Cash, Food I=
tems and Clothing in your region.

Thank you
James.
