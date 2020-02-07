Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D31E4155593
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2020 11:24:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726942AbgBGKYw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Feb 2020 05:24:52 -0500
Received: from sonic315-15.consmr.mail.bf2.yahoo.com ([74.6.134.125]:34378
        "EHLO sonic315-15.consmr.mail.bf2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726674AbgBGKYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Feb 2020 05:24:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1581071090; bh=YooljpITC31Cc9KXMfJzAPmr/1tCBEdX27fhfqn54Fs=; h=Date:From:Reply-To:Subject:References:From:Subject; b=JEO50I3/Q5RA/T5H96ZzdRYrpf8JgpQo/ApI754tNYp+EPMCSMlaZG1UzafDPhYz7yom6LcHks+Lbn9SE2bDUt4RZxIORFG4gCtloa9oOCls/VXsr3QUkUwkFvlVFpZpZa2+qnry1wgRjKMV7W+Sc4KnN3ye7LSgytB6SlfjkGN7QO5wjZt+rweOqeqPDBL4nyUTHBg83HBQOniUSTttzxB6dHcHG/QtNTIeomznMqr6tfyu4Lko9bMnoB2mXOSCs4cHSR1MtIN2SHGWxsCUdHrkulygMVSk1LU+rxVDGwayTq5KFnn/BhNJn29SKFIjWkltzDw0alcPdz7/V8jOZA==
X-YMail-OSG: 8ECSvHAVM1nJpR9mzvMPpinfcJwSF5Q1MJ5ogw15cQ5Rs_9U8kZzU9PxlIOXzqw
 vGK4z7HejZd5CtdsBXlJD6OILssbdCt9ZTLwmymZ_9Oh3qW1j5JKlgw1ytBOI0odZnetkpjqNJjg
 .BlV3Xo_OwcMtwJ3DOcVOrfYF0kD9igUISVl_3MNZHLTiQ_fF_ZQmAzjXCijSjaereKpXSbX.rWM
 nE4pHvzUDvpeUG.cYrXb4fhFEJupwLkgWUJxQJybeaaDJeJPnfZgHq2bryIMYCcsw8sWiq7H.qr1
 vuEXo8y538eUaUsErabpIFaasRyVz2sNG1eg64oflnVzUfkekr.Sh6LlsP8mT1bGpkjfhZXcTJAv
 7qrxKESMG86ReqC1ki9VP8A7TxGWXDRvh09C00itkJcC3mnYVUIMKwr4CnyW1XSHAc5.F7_4HjhK
 dtYTj_XeeJX8o8dJLLIHfw1L9TtT2o5SZjTe4Ei12Z9zkit2kELuai1R73HvvbimpcVWbOnVP2bx
 SixMRisGRv1GYqM6tLHKVQah3RtzDAHOBs.FBQkb6HaIUfA3gvHozpU25UF42DLy7lESMqxA8uwi
 FSPCYapNYtc8DstMcZ9bCvyOuDYWcSNvkyMB2GGcNPcBfB1hyYtUDeAodE6IGS4dWb5eIuhKE3Iv
 YlQjGuAeiGsEtaPz4PLXIL5w9dXpmNMWOSADjQDflzDdWGYlsyzwXGSGBs8Bf9cFbVzS13vECG39
 .ZJizl4SNJbxxw6HG.B.Th.Kn.Cx1TGGQEl_WgAd_7EvMZg7_fJvA5TRlrT7_A94mFGrx_FEm7om
 qjKXDLgd.wc8bILP.asPAKnNW0iHp1jcWBbf8mF0AWyjccOo6RrMUQGkVF.hUJXc9aNnnVHNSh1W
 hG8DPEJAjC5zkrd0Jr9YkYZk3IYsxJ6Cr9n9hj_m5xHYe2W9Frujeg0a6xqYDP3kE09C66FkPt7F
 pepssPP0UmHXlokwzQ5D2nc_ba1phri4v4M3MycyGnAQgXjdHuxzju5fTYqLnP4kMp.lFvMAfydG
 n0Ud5v1C9W_lk_ORx7MfytntbrDNbxZrHnRgRfexMTmz_ySUwVpIIQoUL4lCQQdUGWMqkR9kP_dg
 bNK6JMH2MOT7W.fXAFfrpboa6sIjMJ7.4ucq23wYs.sTYNoqR2YWAwmV2V3LsqPBPiA870k_oXCr
 6uULBV.DXeM6hnD90KYYdHClWDEYFhwqq3nC7idf.gQKZQTvcejVmmwKjXTncL_s0kxuiVCn8lPL
 gMKDbAiyo4z8Bq1QfwuZbCZXOBzPwPcMl4Y62nO7r4Y_C7Gb8x8xx1q0GYyPpPR4W_Why17ovnwf
 7Ww--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Fri, 7 Feb 2020 10:24:50 +0000
Date:   Fri, 7 Feb 2020 10:24:47 +0000 (UTC)
From:   Lisa Williams <ah6149133@gmail.com>
Reply-To: lisawilliams00357@yahoo.com
Message-ID: <965253263.559988.1581071087660@mail.yahoo.com>
Subject: Hello
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <965253263.559988.1581071087660.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15185 YMailNodin Mozilla/5.0 (Windows NT 6.1; rv:72.0) Gecko/20100101 Firefox/72.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Hi Dear,

I was just going through the Internet search when I found your email address, I want to make a new and special friend, so I decided to contact you to see how we can make it work out if we can. Please I wish you will have the desire with me so that we can get to know each other better and see what happens in future.

My name is Lisa Williams, I am an American, but presently I live in the UK, I will be glad to see your reply for us to know each other better to exchange pictures and details about us

Yours
Lisa
