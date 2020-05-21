Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B1921DD323
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2020 18:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728446AbgEUQgH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 May 2020 12:36:07 -0400
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:40355
        "EHLO sonic304-21.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726938AbgEUQgH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 21 May 2020 12:36:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1590078965; bh=6mffK3RH01pMSJbI3gzRyn/TJ4jPuu2pqeTpPbg3ras=; h=Date:From:Reply-To:Subject:References:From:Subject; b=Y4+GZZKGGClMf6Q8kbESS8/1I9ZOZO8t3oI49jEJAlvUmJ0/ThZcCFo9YB2ptAztHfQ4RxjxMPORfmePkdIWmRJCZOL8lz8imwdLl8vOsX60VgjM6fPzXKKniLBu6RKZ//AxdS/a23VUlgmn578M4FwKswOeMz/K+VdZprtjmSMJY++Xqgir1uZ+gs2KOHcnDOD6sc0Z9CjJKPRmFKfPpCbSs9CxqjJ+1gOjoN/sVRwcBLdj3aISZSpAgFOvAarUcer2xWbcFAoD8mD9zVUovB01IxwiEgvdkXfGGGa4nJK1TWe8dDpv0lr4+CjZGnhbj9VcexP79N+16hLXvg5s8w==
X-YMail-OSG: 846i7RIVM1lrqFAy24zLj.Nxil7sSdhj2GasAN_Om5TX8FUr0AiSOX8bv1SFnTC
 awd.et.g3xt5AJLquZola.OXwTuEpSleq6ODz1ZXmWHrty_E9Wtbzcc1o002cWSMcdJ_CDdq2KpC
 jDnft19HzgwL0zF7s7PS81gDG6vKeTqDHMpagwGL0J8GYXPwIzs_zu.VhAwF9vqujJ6xe8z5LGcV
 Nevz0_vl.XYuga56Bkl9Esi5xrQOl_yeXtsuugMCJmPp9MiqwnYKIR8lDm4KFr6FrOubD2lCkW9v
 9zOjF4YpiwDGKD6zsMLmf5TA2Jur7JoL_u4hnBGe3Y2HkAdo7un7WDly4U0SRUocGnf_sQ6MBLRw
 2j2pxToWXmo.QI66oZKa55CNY9HKErSN1JwmVtZVEHcIUwub9R6_fuCgN_xh3JfeXdz4M_xtEVSM
 r0noLhNmFepodwjlwNdNITYfQO1CmWQCipDwlUQv7mu2fgseuM.iV.z4sbF_9Q954JLjCOLAs9ws
 5rGpol9nxVk4OCcUysQ8g6KkBk.hFdl5LaGZwvtNlLb7k.58w.gZJsUrKaNJojT6qmYiXRA39utH
 0uF65RyuL08FflaTx7nPVK4CvNRsG9.0062wDIaw7OYMxEjfldzGsBDN2JPDIuvh27uoFzuQjhTu
 _uhGkME0SUFwzMJ5QZmu5t3EHmEDNm0grVhl6IXlirfaECHJHPNNG4e..JaE6pvtm33MUrdYllHr
 v8AnxD_vaSrImE6bVEF_.9ySv0OnDondvqyc.NQ4m2B18uGA60IXeegxKKxlWzjoFJaaJg.Z2Kg.
 2gPx27UBdmr._oZrpvz0icXgp6MfC.6zkfq1FLERoOkEIoGMK6KxQLQ90Xtz62iIykgA96uKFt3R
 O_QdYqK5nF7z5D0DmJ6Th.pTsfxDKeYpWi3F66XeEwLYd6Nfr997tw5beuQH2KmgkKP2ECOlBtjD
 3oX1zmvQuGbQwb5kWKe.Qg_aGent7EY3DbboZxfm3rq07BLzidhbOGM3LNwDyFnJFmprmk7pnqAs
 S5hNbDyxCcACPCaMgC0g_7wleRT3u63__ZMia5jinkduZiM9_8YNG7qjaf55MYaqVntVAQ9DJ_e2
 H.OZT78ToX7A.Gnqg6rfNCvPIL4LU3DfhOxg4Dwd5lzi2AjZnrekoJjd9XT1NX8ekY8kSASaKseY
 GDW55g.YIKvL5L3wslbY2.CHwHQPaDXDKg1GuJ4IsZBL3MoS0xlZmlesf8pzE69Ec7hQVbaySJoB
 nqomCVxiKWqzIv.TqUWDbxdvus8pG6kSuiym7s_MZc8O7lq_L_yLFyKEbsYnJHcV6kpdfXgpCsA-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.ne1.yahoo.com with HTTP; Thu, 21 May 2020 16:36:05 +0000
Date:   Thu, 21 May 2020 16:36:03 +0000 (UTC)
From:   Rose Gordon <rosegordonor@gmail.com>
Reply-To: rosegordonor@gmail.com
Message-ID: <1742494710.503033.1590078963457@mail.yahoo.com>
Subject: Hi there
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <1742494710.503033.1590078963457.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15959 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Best of the day to you I'm Rose by name 32years old single lady, Can we be friends? i was born and raised in london in United Kingdom Take care Rose.
