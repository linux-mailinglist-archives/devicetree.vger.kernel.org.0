Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8734570D917
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 11:33:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235423AbjEWJdr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 05:33:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234889AbjEWJdq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 05:33:46 -0400
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com [IPv6:2607:f8b0:4864:20::942])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 702F2118
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 02:33:28 -0700 (PDT)
Received: by mail-ua1-x942.google.com with SMTP id a1e0cc1a2514c-783f88ce557so4424807241.3
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 02:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684834407; x=1687426407;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JEkw1KmmzfmMdZjy2G/k2kJ9Rp06l3CUoffIihDDUro=;
        b=sVn+V8xz4KWx5wc63ZtOC7FKixaUYTmfuhWjTvwP1lEpAeRXqD6FG8NDC2k/NThRUd
         cOMXSCBploUT62chXXXy/E6aJcPwS4B+Ac1MCoQl9ZfmAQ4zQ25E3UFV+o9/jGcoLXzP
         by3krT8OUXMul6VlBB7zu9SziSJQtlQeJcIvF13Xj2kQJmBo7pMIrjpv5w26R2a+92X7
         NZl5/S1NdMhDxmQKy9+k9XlNzDf5U0oCiM+qIYO7IuZMCmxxm05XSegVBUwxBqE5ya5u
         g8iKE1NH3FJKB2KDpf2YCz5SSmN3c43hxh3sTd9Hg33joZ7H7/CHqZob27IHl6Z2RrgD
         k0Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684834407; x=1687426407;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JEkw1KmmzfmMdZjy2G/k2kJ9Rp06l3CUoffIihDDUro=;
        b=FKZ2K38ptvEiOjCpKm/MHaE8EM1YhwFmJpOomABwZLWN6p5T/TQAqe6nqA1Bjhiipv
         92ZL3Lv+ibGe5SSHx1y5wLl0k4YqDcqDPOa5ijZireL1vSScBfwXlN9YsdXp/QdZR0kY
         AJxCOJDH00g0mobUeeuipGigNBOcuSW5Ks6/y1W3O6dAb5hDePdwbGryXEkSWLuxd7Oq
         C8KB52P23qeQcB8J0B72MVLel9N/7tiI83h2dYJ8YdxRCSYhk+aW5sb7JSDhn/nW9zBE
         qhGpVDo9qEfM9xxetpBqlBTCZTUWsg+UYAmoYVVDZgfaeOtGRTLPqz7Q1M+P+ybY3sE1
         TAnA==
X-Gm-Message-State: AC+VfDwdCp7FAAkla37zqc6nCe/hvNwLlbcqrFXlss1JfL8vQPLRVyJV
        /3lsZSLr8UvnxEWOmzDCXCvdf8uUrylbioZnMOg=
X-Google-Smtp-Source: ACHHUZ5vZJYBgwgio0yvgW5/rmW6UdP0ZG/UcA659BYsiEXLpR6udS+5shVT29Y+32KvhBUxm5fwoDdmKTzJwZUSXUg=
X-Received: by 2002:a67:ee16:0:b0:42c:9a74:c724 with SMTP id
 f22-20020a67ee16000000b0042c9a74c724mr3906366vsp.3.1684834407314; Tue, 23 May
 2023 02:33:27 -0700 (PDT)
MIME-Version: 1.0
Sender: kone740150adama@gmail.com
Received: by 2002:a59:9942:0:b0:3d3:55f5:1985 with HTTP; Tue, 23 May 2023
 02:33:26 -0700 (PDT)
From:   AVA SMITH <avasmith1181@gmail.com>
Date:   Tue, 23 May 2023 09:33:26 +0000
X-Google-Sender-Auth: wHqt7qkbPK5boFIvkFBJBdYBN-g
Message-ID: <CABZurumAoLOGE=xvof2OLx6HQXAYQ4KhpLFwzfipHvk2-4zcDA@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,
My name is Dr Ava Smith,a medical doctor from United States.I have
Dual citizenship which is English and French.I will share more details
about me as soon as i get a response from you.

Thanks
Ava
