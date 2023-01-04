Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECCD65D22D
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 13:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231137AbjADMPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 07:15:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbjADMPf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 07:15:35 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48B62E4
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 04:15:33 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id z26so50128515lfu.8
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 04:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g2m/uNsCm/OsAUZxAnJOSdXXDa9Gh4wg88n4VPL2lMU=;
        b=Jn5coFOCHrFsKZjKP+dOO3Y8bJyiDiBHYlNOLMnFn5TD2pK8Q3nKQzvuMgKDr7mJcR
         ZNquJNMqa/SiQ32zHlWXghmNTDSSb4ZmldansFCu2A4UNO23tpjuWPs6G5TAsqpFha9E
         0LcpbQCt+RNjoit6WhyfQGRSLc3nHzW6i5b9m1polLpfcgI4RKJJJmiCuNSJY56dltKA
         OBG48FCIlkDUTuZ+EO4zofKGzE+trhPP9hWo12pHQe2VIEwFh4qGBeIczM5KU2rsL950
         2bbLN9A5i8JHvr4rTj0ZrfMrj0a9rjVJ9Kaq+BsLCX/bpKiqRGpEuORsBpjAvfcJcaTb
         e9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2m/uNsCm/OsAUZxAnJOSdXXDa9Gh4wg88n4VPL2lMU=;
        b=0tNwfBUUKaFuhYJzaM8QF/19goUdanLOz1ZXNQCFKgqk9cFJ8TPQhh91oafC0ORtNt
         eTXrqPOYY005zcJs86fvXqn3pluHCRT/Q6c45gHvwRpdtpxa0lOo2DSo6FW14Ehj/5b1
         gsoqljFjtsxL14czABHlipK8yn7o74bh99vAFk0iuXe586HnXkvuAI/TJQKYNRu5elph
         MnJBmzYmR1UWQ+5wOW6AHVEhbXDeJgM2G847CuTkO68dnWnzUG62XvHfweviwuQGtOKT
         cJdKAi+KTYIjCVSCMy32THDSCo1gB8mhG9Xnx++sjr63WtoV9C+Sw8LeBOEKujnmWPTc
         Pdyw==
X-Gm-Message-State: AFqh2kosCyAjIqRfbXSHDHemwi70QzJDr7yPNmTmx+kEU3l9WMND5ZCF
        xZj9I0xiMfyXAHlF+pRBbKVfujmPmFW4QQTwYAU=
X-Google-Smtp-Source: AMrXdXtLpeujotLHljpviMeG3eJ2uXtlC0K/bZdAI27EKaS0MJuYnqvEbtlzvxpjTFbpsMGu/yXO45mOpiXijO+Mjw8=
X-Received: by 2002:a05:6512:1317:b0:4cb:e95:785b with SMTP id
 x23-20020a056512131700b004cb0e95785bmr2678655lfu.357.1672834531629; Wed, 04
 Jan 2023 04:15:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:2191:b0:23b:e463:204d with HTTP; Wed, 4 Jan 2023
 04:15:30 -0800 (PST)
Reply-To: gregdenzell9@gmail.com
From:   Greg Denzell <denzellg74@gmail.com>
Date:   Wed, 4 Jan 2023 12:15:30 +0000
Message-ID: <CAMLOHgPAy8-KtzxS3-8U_9c_=dzHrWcVdj8E7hDejif3-vjURg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Seasons Greetings!

This will remind you again that I have not yet received your reply to
my last message to you.
