Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 139711745AE
	for <lists+devicetree@lfdr.de>; Sat, 29 Feb 2020 10:03:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726674AbgB2JDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Feb 2020 04:03:15 -0500
Received: from sonic301-31.consmr.mail.ne1.yahoo.com ([66.163.184.200]:38301
        "EHLO sonic301-31.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726671AbgB2JDP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Feb 2020 04:03:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1582966992; bh=wAc60N6vLjQHYjkwN/FPZ2a336n5fQmyKBZ7D/QmUmw=; h=Date:From:Reply-To:Subject:References:From:Subject; b=jlkrDEgLaT8/BXXiCFCXqs5IiybgSFNv/G4QFV1LugM40Dzq9ZiqgPmKiyyPCnr/Lt70tJUo0jfpDvz41a+fXL8k2ZS1o7dDKvUYR02eieCS8IXz7XZRehkynteCEa53vtRTtDxT2zDv1KQNqi3bgcUU1hJMI3ytG+C0l5qPb7A7kAWnsdClO6oXyvI1KiPADdrb3K+pHqWpU3UJwcAKQMePKnv/2oV+/l3X7TNGl1O0GuQBM8K93FFuQgOTZvv5WuHQifFzTfPBKF9N2RSUDKxIc8D9OIUTZ4vixPpGVxW6x/MLLpn7v/wpd7gaVA847EIGQH7VglOWkEqgeXx/Bg==
X-YMail-OSG: VLl1HfQVM1nwxGQuYlQMZBIOEghAjJ8JE1JonNRAXBpP3i1YqK6ThNAAjy4Migr
 RFfHds6vm3QJL6z9Gf.2zuJg5zHxiEPfiO8wmXiZHujJUkd19bRLglSXWu4JrLFjGWzQqjNS7Kcc
 oXjqvAagJAwwxd3TdPiiKu5IZ4RUGAx6cN.LrnjldGXhYF6owxZuVroIKL_UVFB44vFhTEoo9lRI
 PlN8zdE5YgxQakjrmIewM.MwobxcN5o2LVUD9U14bMjZanQFoTP3j5beN500c7Rxrlzvk2mID4Yb
 WDGJj1pM.mpyvGRHjIwF7.uMY_brTj96bpu3aMhsoDkY91bHovuJhprbzeV_6bAd.xz_W4W3jSrB
 K1JNqJCvivt4xVSaXDR4xZbRIlZL_rCLUAn_XTCpCq4j50XtSj8YFtqnidmPEl8uLAojgeGw9GB6
 I.D1Wig2FOqGCXTjyBa2VSGpQoacPTbmJA.c_Qz0_j4MG2TAvRB0dPAvlu53Fk120zla_8Iz69Ct
 fZthDSbDwt6dluJSlcze9Eai0vGuThH923Dmbhe1yFtJuY2o5YmwealclH_KNFcV0yUHAU4Uyok9
 mm7fHLEi1FY9j5qcStuwhjo9Rbpe.7xbNmfOFZsU4J_1CMvKDEkfxQ6kAr_sBMAigpe5yr1FD4hW
 iwSwylmhlUNuiPfOjpsgh5TTEht3wwL2yTDshm6G__1LB6JoC8HVLTpjNjU4tm94xMws8ziIcfJj
 iprnGYjOURTVqL0XpHNikHh5bmfIS4fA.3wMSXiC3OpguT5SaQ6d5kM9IecXjdKS4oN1IThNd37q
 R1sHaJx_gFtBl5Stezt.u_HEmXToXm92wFm.o0YVcWFk_puJZMtcesOnqnKga6lC8UmxRvcWpY04
 .hoe3oq0sbYzC3oKEvQSl1e1wDQSMIyLlvu1wBDyGqn9yeZ.jEFrBS2YV9YIxgOKcABoPrCAxVXg
 9UBzL871EUD8JauwCFXTQERIGotlv85nzORGaZk73KsUUUP85Porl1uu41AsiajjSki4fFJTLeA8
 49N6UVEhER_V46mxhYmTgWT8AJ2W3IBHZVwK2LsupPSvmIc8UMztZF6wlJCss75sBsLBfwa7Hiip
 hsu3mUKfOAwuR_1kcGMYuXkEHULZhYsHuAyjpzCXX.mJN7.QdzZvGzCzAfJEORTnsBoHOl3E1R68
 eN3.mvGIwSyE_MaQKgaCdd8SEj3Rld2ccp4OU5zDKpBXGir2bDJuI3HTL1ei0A6hC_ib4jJMwu3j
 DrUxvRDg4GwxKu6R70cU5_MWt7cItURxH0r6ZG3s1Ozb46ZNQW2AlpFOC0uTt_azDgjrIWD8-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.ne1.yahoo.com with HTTP; Sat, 29 Feb 2020 09:03:12 +0000
Date:   Sat, 29 Feb 2020 09:03:11 +0000 (UTC)
From:   Mrs Elodie Antoine <mrselodieantoine@gmail.com>
Reply-To: antoinm93@yahoo.com
Message-ID: <1523894035.2303671.1582966991284@mail.yahoo.com>
Subject: Greeting from Mrs Elodie Antoine,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1523894035.2303671.1582966991284.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15302 YMailNodin Mozilla/5.0 (Windows NT 6.1; rv:73.0) Gecko/20100101 Firefox/73.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Greeting from Mrs Elodie Antoine,

Calvary Greetings in the name of the LORD Almighty and Our LORD JESUS CHRIST the giver of every good thing. Good day,i know this letter will definitely come to you as a huge surprise, but I implore you to take the time to go through it carefully as the decision you make will go off a long way to determine my future and continued existence. I am Mrs Elodie Antoine
aging widow of 59 years old suffering from long time illness. I have some funds I inherited from my late husband,

The sum of (US$4.5 Million Dollars) and I needed a very honest and God fearing who can withdraw this money then use the funds for Charity works. I WISH TO GIVE THIS FUNDS TO YOU FOR CHARITY WORKS. I found your email address from the internet after honest prayers to the LORD to bring me a helper and i decided to contact you if you may be willing and interested to handle these trust funds in good faith before anything happens to me.
I accept this decision because I do not have any child who will inherit this money after I die. I want your urgent reply to me so that I will give you the deposit receipt which the COMPANY issued to me as next of kin for immediate transfer of the money to your account in your country, to start the good work of God, I want you to use the 15/percent of the total amount to help yourself in doing the project.


I am desperately in keen need of assistance and I have summoned up courage to contact you for this task, you must not fail me and the millions of the poor people in our todays WORLD. This is no stolen money and there are no dangers involved,100% RISK FREE with full legal proof. Please if you would be able to use the funds for the Charity works kindly let me know immediately.I will appreciate your utmost confidentiality and trust in this matter to accomplish my heart desire, as I don't want anything that will jeopardize my last wish. I want you to take 15 percent of the total money for your personal use while 85% of the money will go to charity.I will appreciate your utmost confidentiality and trust in this matter to accomplish my heart desire, as I don't want anything that will jeopardize my last wish.


kindly respond for further details.

Thanks and God bless you,

Mrs Elodie Antoine
