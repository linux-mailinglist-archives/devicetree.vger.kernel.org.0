Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49C5E67783E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 11:06:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231626AbjAWKGK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 05:06:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231709AbjAWKGJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 05:06:09 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CF49B455
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:06:05 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id b1so8814329ybn.11
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c0FbadMqL2tX0C6hAHeoCOdwffzG+1EQWjMoccdBxVw=;
        b=hDvCUpkUfbZGy2Fw/xJLuLWn2k6BiYu8RwY1gGtHpPJS3SWIq4yE6UsgZvzm8QvzaL
         PYOztGK2IEjBzUPh9HgzpyE94jhqU7DmxzSLh118WmiIcnupENfNll3IiddbIcwEqncW
         s2kgKUN9zos4yOfaqBNsARWfb18uqf7fNB7FNgaOdfKA1wsPOJm1HE207ZpEhrUGEY+E
         2p8ovRK7lHpaH//ZoZ9CKNQmRgEa9q7aIt+hKbUZosllBciB2nyMQvGFDilIR2TElT95
         Q3TYryjW00TqRgZRKXD2aQXFxpkOsl9cX63pcXKohtDM2n7xslQGhLarsSsGLogqGOyi
         5hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c0FbadMqL2tX0C6hAHeoCOdwffzG+1EQWjMoccdBxVw=;
        b=XVURCQEpvSC7qf+L7G/sPQmXyY32ScYrka0fI9gn9Jjv8F/cfmmz9HiGVZliDt2Tj8
         8HItW6y8QXZA73x6+wX6hOiK170w2FnMS/jN0MWDg4vJC61f0v6qf3a1nZQU0WaqHrQN
         huJ8gc7HEjPo80aRPeT5X7xU5GnD/thmtAESma7QXlBbymiq205lk/txbNccO5kvlNmJ
         3IPFEoq3/XymaGYHH1JQC+QrjHb9eAmLpfuKzYGuTIAx5aUGFUUChnh9zt1PLSeJ/k5v
         tb+RgIoRKTLJw1rjpgPpCNFsYE/sfjJ7HZUxFl+ih89MUdhfwSIYCVj2EntaJ0N6ZM9a
         SNQA==
X-Gm-Message-State: AFqh2kpRXR9YhdIwTmzfb5HMtrScI64yVO7KXjDk6qwg1lBhJFz6QCWe
        1Ot2TKcta0Szs9oJLssEpZoc42AAWWFj7aTqSac=
X-Google-Smtp-Source: AMrXdXsnw1QsEtPusHvGidnd64bJeyIXIVwUlZcBsVEvmrR3WdOROer7URy6gEGxpU9qWSTG7rJLkrmkDW7xyF9dCAE=
X-Received: by 2002:a25:880d:0:b0:7dd:ee67:cab with SMTP id
 c13-20020a25880d000000b007ddee670cabmr1711080ybl.567.1674468364427; Mon, 23
 Jan 2023 02:06:04 -0800 (PST)
MIME-Version: 1.0
Sender: damigoaloma2@gmail.com
Received: by 2002:a05:7000:3e04:b0:433:7300:c698 with HTTP; Mon, 23 Jan 2023
 02:06:03 -0800 (PST)
From:   "Mrs. Rabi Affason Marcus" <affasonrabi@gmail.com>
Date:   Mon, 23 Jan 2023 02:06:03 -0800
X-Google-Sender-Auth: ETHZq6Xe1ufDbgBKUVfhSXul0qE
Message-ID: <CANG-f2-++tOQxO76a_sUsX1D+SfXgZS4CQ4D_HGBcASgZK+5CA@mail.gmail.com>
Subject: PLEASE CONFIRM MY PREVIOUS MAIL FOR MORE DETAILS.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.6 required=5.0 tests=BAYES_80,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,
        T_HK_NAME_FM_MR_MRS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello my beloved good morning from here, please did you received my
previous mail?
