Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD249574787
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 10:46:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235412AbiGNIqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 04:46:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237309AbiGNIqx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 04:46:53 -0400
X-Greylist: delayed 1072 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 14 Jul 2022 01:46:45 PDT
Received: from mail.usagered.pl (mail.usagered.pl [151.236.21.109])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99AA8402E4
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 01:46:45 -0700 (PDT)
Received: by mail.usagered.pl (Postfix, from userid 1001)
        id 5D3BA277FC; Thu, 14 Jul 2022 08:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=usagered.pl; s=mail;
        t=1657786580; bh=S5GS4r1gdcStbmUjGimgYcdD6aVl8sOhN2JT3x+KFl0=;
        h=Date:From:To:Subject:From;
        b=Vl0XiOcl/rqSgl8MtdhNtT2+nNm4RrBuh2IW5rcnejmVQT7Dw9GXdRGh3FB5NOIzg
         i2BJkDjxusa458vfQyPWboXQfLLBTK8O0eDV9FT2uLisftc1LS6NfEzUA3eyVqGVev
         A9y6SyXsisf5Ye4W/Dmrra/OLIZQBKoO3R8lF5qaJaShznCI9yFeM5v6muIgg2AMmk
         rP2IYNhSUMqBQ9VFqgwoiRRZtfWg1S8ILStf3N6X/II9qfvdoJho0ccR5h5BXrP7Ha
         j0I8wSiT5HXj/7f5vd4M5DEAeurHB4f46WFUXMCqZFP2CYqCpPAuOcg8U+GYdPCq8W
         ZOW2aql8vh9LA==
Received: by mail.usagered.pl for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 08:13:04 GMT
Message-ID: <20220714063001-0.1.7.1vfc.0.9h0qkkls6r@usagered.pl>
Date:   Thu, 14 Jul 2022 08:13:04 GMT
From:   =?UTF-8?Q? "Przemys=C5=82aw_Wr=C3=B3blewski" ?= 
        <przemyslaw.wroblewski@usagered.pl>
To:     <devicetree@vger.kernel.org>
Subject: Wycena paneli fotowoltaicznych
X-Mailer: mail.usagered.pl
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dzie=C5=84 dobry,

dostrzegam mo=C5=BCliwo=C5=9B=C4=87 wsp=C3=B3=C5=82pracy z Pa=C5=84stwa f=
irm=C4=85.

=C5=9Awiadczymy kompleksow=C4=85 obs=C5=82ug=C4=99 inwestycji w fotowolta=
ik=C4=99, kt=C3=B3ra obni=C5=BCa koszty energii elektrycznej nawet o 90%.

Czy s=C4=85 Pa=C5=84stwo zainteresowani weryfikacj=C4=85 wst=C4=99pnych p=
ropozycji?

Pozdrawiam,
Przemys=C5=82aw Wr=C3=B3blewski
