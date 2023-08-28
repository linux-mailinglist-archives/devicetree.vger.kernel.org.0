Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8F4E78B78A
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:50:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233281AbjH1Sth (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:49:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233332AbjH1StE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:49:04 -0400
X-Greylist: delayed 923 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 28 Aug 2023 11:48:34 PDT
Received: from symantec.comsats.net.pk (symantec.comsats.net.pk [210.56.11.35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB319CD2
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:48:34 -0700 (PDT)
X-AuditID: d2380b23-3c1ff70000007104-a6-64ece85b9e37
Received: from iesco.comsatshosting.com (iesco.comsatshosting.com [210.56.28.11])
        (using TLS with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (Client did not present a certificate)
        by symantec.comsats.net.pk (Symantec Messaging Gateway) with SMTP id 36.AE.28932.B58ECE46; Mon, 28 Aug 2023 23:32:59 +0500 (PKT)
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
        d=iesco.com.pk; s=default;
        h=received:content-type:mime-version:content-transfer-encoding
          :content-description:subject:to:from:date:reply-to;
        b=C4BZiZS0Erf35oZzAfua7yD/1tzt2uwXzbcyHQ1QPk46tV6bxLVs8Bmy+9qXFq2If
          dEWJwU2YSZXTZa1WUAwNyJn4FpgxO//ckN1Ca7uQ9McKBIGeO9KEAP+cZskSU3pLm
          BhPFOyIE9Xa7hfI6mN40V3fWxLuocFY+Kkim6UNGs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iesco.com.pk; s=default;
        h=reply-to:date:from:to:subject:content-description
          :content-transfer-encoding:mime-version:content-type;
        bh=olmk80cLmZoXHNEULi94oyNYNSuJDPnVFjLFsR7WPgY=;
        b=ErsyfkvaLYNGKw3UmPjQStJhfctVjF7+V8eEihUuKd4JMkds+uWJYHk+F9UXrmYMY
          EO/SPBXIRzSYbsc4crCOV0HPe+/Fr9q6aBWnNOQ9bI/snas9BbZWj+VZKg559vyZM
          T+mrM6coQ0ZAdLdbYwl3WHz2fqPEodn2l7Y13NPoI=
Received: from [94.156.6.90] (UnknownHost [94.156.6.90]) by iesco.comsatshosting.com with SMTP;
   Mon, 28 Aug 2023 23:28:12 +0500
Message-ID: <36.AE.28932.B58ECE46@symantec.comsats.net.pk>
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Thanks for your response!
To:     devicetree@vger.kernel.org
From:   "Hou Qijun" <conference@iesco.com.pk>
Date:   Mon, 28 Aug 2023 11:28:33 -0700
Reply-To: hqin@zyacn.com
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf0wTZxjH8/ZKOYGbx6Hw0HX+cYuo+1HQkMz90GxLNsk0sj9GlrktetCT
        NrTX5q6guC3rNAZsVJhpt1p/lY0RI91mYJEpqWOdVMZwEabMjcGEFaYtAzYgYoxh7/UHvX/e
        PPd5nvf7fe593pckmGukljQJdl4UODOryVAPbNRlPv32nUlD0ZCzcOOZKz+nvYhKZttWvY52
        ZLxg4M2mGl4s3Lwrw9jvDKfbOom93uNn0x0orHKiZSTQxdA86NY4UQbJ0J0q8F1qjn2o6VYC
        or3XNXKVmh4loLVlgxwz9AEEf45Y5Jiin4Ohun5CjglaD7fcLk2cZ8OPx8PqOH8SWpqiuIbE
        cQHMO+0yzqFZeNj9MFa+gl4Fv80Px2INLm/3zajjtqvh/J3x9LgtQPjiHGpEy70KN6/Czatw
        86bcfEh9DuVJtRYOH1qFvsJqkTi7pBd4u95W1YZiJ5j5+Lfo88adQUSTiM2i6h2TBiaNq8Gb
        gmgrqWJXUkMfYfRIudVQa+Qk406x2sxL7AqqLIwxtYTLq81VrJbS/YppzhIV+D2SmbfjkQUR
        kATeNvBSBG8zcLX7eNEaFwuiR0k1m0fpCiYqGLqSs/NVPG/jxWT2DZJkgRodx8rZIl/J791t
        MtuTabyva2vUwNDKTKyZx6i3srFXrjKh7EdFLguiEjILN1Uqa1OSjbNIpsqEbk6cZiVpTDOf
        av0FQyYJU3q9yESePvpdgCDrp/oCBKMWrAKvzaNuTeB6Wq43VgtLXWtzqVA3bm65IiEbaHXU
        ZZmvVPCUR/LOR9ACwtPKoYROuUP8JFJtM9S13zHMTMBY10ANjsqHl2ApwQ3nsQ7tV8FI6E3o
        8XnT4EpwSAMLXYsktO9/kAX+r//LhSmfB8Dvvwtw82LfergxPlwM4ab7z8PJ73/YAouOgddg
        vn5iG7Q9cJXC0b7uMji7/+5uiETnbDDSdaQGPAuuD8AzcwE/n48/mT6EwH0qdBg/pb7rRxDc
        mPY0IPin130Mwezi5U8R3BsM4XWsyXMCwWf3A6cQDNwcOY3XS+3NKIJHpsIjc3XI90iyc3bl
        yDIDEXlkCZoYWZoMmSRM/b3WgbaFiQsdwrt/bz9jCnr753U/Dc+919LTeHXhGZ9zzXTo3ofw
        ZZSd6Ji2Fp8rKnIfZg6untIVHFu7Kb/w0K6TjWvyy/e8fBC+eeUp3vuHWOpw6UV/zebW7eTk
        F5MzdX/VWd7Rlr2/7zbDzT676UBgy6tfodvrdhSvi6KxnrGGtVdL/m1g1ZKRW/8EIUrc/8x5
        pgXgBAAA
X-Spam-Status: No, score=4.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_SBL,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for your response,


Kindly reconfirm your interest to further discuss the investment Thanks for=
 your response,


partnership within your country as I explained earlier so we can have a fur=
ther discussion to facilitate the process for mutual interest.

Looking forward to your response.

Hou Qijun
Vice President- CNPC
China National Petroleum Corporation
No. 9 Dongzhimen North Street Dongcheng District Beijing.

