Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 487215A47AB
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 12:57:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbiH2K5Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 06:57:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiH2K5O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 06:57:14 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50AE65FF7B
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 03:57:13 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id fy31so14486166ejc.6
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 03:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc;
        bh=6VzaTuMkSaoKWgUM6Q1+SMdSDfZtUEniQTBorD4F7ME=;
        b=CfmydShDCztF1lFmRLHP60vFzXQBQJcRJrf9R7syQG4+Ghh81vr4yx3pEdC0t/ZUbc
         EOdmO0R589gchjSsnJIv6I7X96LU7P/kuQqgYTr7GYJyTYSapO8sdfdgwrRaIQBPOA4f
         S6tjCq0682LmxYwpcO1cxt+HPxq7gQHdsUrshLmHctxnQqsdH/00wxOV9fWJoXYjF1vN
         9fBjRGbAjHXj4hToJmZ7jf8YGDzvHrVodg5J6z548ZRiGBZOGItqdmBCZl1r5A9A9IcT
         stmF5LUcOQWXah9dOcopbukB9NqfsLPOChuh8TYc4BkfaMD1gv/ON37n+UlUQjzxVuYy
         KXLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc;
        bh=6VzaTuMkSaoKWgUM6Q1+SMdSDfZtUEniQTBorD4F7ME=;
        b=HP72GGUgwb9DjA/6vtq6hQWnFplRZAoYc+M82qiAxni2e0Cnwjp1IOK/9lBLp6XDeE
         ytNf1bpQNXIWgP8yPyQRUWH6E+NaZNheof2oIpU8mnhyoc0ApR1A2y2NhGNNOcYHLEJl
         mJ7VGuFKNTyw//OIt1Jv+/Ff2Jfw1Mr1SruEciR9MsJ9N/bAr1TVLAo3XaOs7GLF6J8Q
         0itmYOoIQGpg4BieabE5Q3NWelB0PwjzBVt4FP8YpunG+YnFdCb/wN2HG0wLJC/GGNmt
         NoNzpUXKLo2kfe8vEw9D/FX3l/STsaTn/xKXsLxdYLifEfL2mo/JUETkGi1M3OdbkKD+
         Y7ww==
X-Gm-Message-State: ACgBeo3SknifaH+DmXDpAplqdUPWofssg/wIDFRnfRNoF6zqBbRkG/Wx
        RnU2wLPkE5/mpVnaEs8Dc+O9/Lnz6ys5e6/Xbdg=
X-Google-Smtp-Source: AA6agR55FRZJIk60eCzt2J3c9o58hyvmMpi9LZyRE+VZN7vB9cdOa8ZLgEMufNMjQrxHp1v/L8+Kyz/FE05HUDbWenk=
X-Received: by 2002:a17:907:c28:b0:73d:beb7:b9c2 with SMTP id
 ga40-20020a1709070c2800b0073dbeb7b9c2mr13170617ejc.336.1661770631606; Mon, 29
 Aug 2022 03:57:11 -0700 (PDT)
MIME-Version: 1.0
Sender: zibrahimumar5@gmail.com
Received: by 2002:a05:6408:2494:b0:1af:76ef:df59 with HTTP; Mon, 29 Aug 2022
 03:57:10 -0700 (PDT)
From:   "Mrs. Margaret Christopher" <mrsmargaretchristopher01@gmail.com>
Date:   Mon, 29 Aug 2022 03:57:10 -0700
X-Google-Sender-Auth: eU5H_H9EW6xyDs_Mb5rVaosm8UY
Message-ID: <CAOc4p_GeUGomkT4TkDq1Uxcdgb4Z-RyDn0mxMHD3th=i6+v0yw@mail.gmail.com>
Subject: Humanitarian Project For Less Privileged.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello Dear

  Am a dying woman here in the hospital, i was diagnose as a
Coronavirus patient over 2 months ago. I am A business woman who is
dealing with Gold Exportation, I Am 59 year old from USA California i
have a charitable and unfufilling  project that am about to handover
to you, if you are interested to know more about this project please reply me.

 Hope to hear from you

Best Regard

Margaret
