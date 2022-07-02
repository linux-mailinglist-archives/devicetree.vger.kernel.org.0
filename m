Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3302564192
	for <lists+devicetree@lfdr.de>; Sat,  2 Jul 2022 18:45:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232294AbiGBQpN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 12:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231540AbiGBQpN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 12:45:13 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE34DF7C
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 09:45:11 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id s21so874903pjq.4
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 09:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=VSYpk3Of4FBRUJYqmq0M/j5cpHskb9czYUFMGWXE4WlIMNDhH/UtSjzwfIb14lYM1X
         YKvNLiIPfHKpQ2v2kBG3crgX1zdIy73JVu7GvNdfLEZbdub/pHTvAhIwLCp7JOgqHwLz
         YL8AVppw9gKGV+u/oUHYOb1qdE3T5T1TTz928Zauc4EhIvphJpIg1mxZIDfPbIvPY0pT
         /TNrhZAGLjyFwFYOt+3aOBrhbb08gsOsycHPPuDi7EKBJj+ZoUIShqlTiZq6aSDh0SJX
         3J0fA9NVZVcL3PYDtMFM8Nhhxvn1+H1gy4K9eyAvgLxNaIAR+3pwhKNoGkHhxmyTl/z4
         3Umw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=I8R3IGc73kSzDwGqn/CWJ3v4YiJKk2Qblr67f1V92dNjomKn5r3CJAqhU2rSjTKCk5
         O61ziHwo4yKuBnZdI42boMExvLcay0j7DObsRWqwLbuWih/+GVb2VIh4kHohqxLoQX9V
         3gjfVqdO4gqXgIf5jZposfFYj6LIMnpzKzhaDwenLOPSkS9mnk8XUNcu814weVilhHbh
         PgfeVucL4XGDxUC0TMKDpBAHgOAGtm7sgu0l2+KlsMRcL3PcisFGxyalU+PQS1JK78J6
         7H+foGyg0WY9wleYIrizivse9gqpZ9v3bkL02D2zfziCQYvDqrSA73yNt9qTX/GWMDFw
         MZeA==
X-Gm-Message-State: AJIora+8UrnfCc4TljOAJ/greZqeC6/8FwgcaZdKsJoiKAonsmbvzHe2
        tIQN7uTfXcGK+Kio1CiYn40xym0vziiat1s+Ee4=
X-Google-Smtp-Source: AGRyM1uyuKX74bCHjm1VI2Vn5AIuArSNDf3eHGmRGW/29wR/9JpvoKF1bRMpywiYD8rv/HW9szRVVXopOrREuibtIlA=
X-Received: by 2002:a17:90b:4f8c:b0:1ec:d1bf:8c64 with SMTP id
 qe12-20020a17090b4f8c00b001ecd1bf8c64mr24042197pjb.66.1656780310972; Sat, 02
 Jul 2022 09:45:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a20:3b2f:b0:88:139b:2e2a with HTTP; Sat, 2 Jul 2022
 09:45:10 -0700 (PDT)
From:   zenith banks <zenithbannknig11@gmail.com>
Date:   Sat, 2 Jul 2022 09:45:10 -0700
Message-ID: <CA+k8gY65q1G-p3jrNF6VG9p_rLQQ1V0Pc-37SGp7=zMcwYMVSA@mail.gmail.com>
Subject: Confirm the receipt of this mail
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


