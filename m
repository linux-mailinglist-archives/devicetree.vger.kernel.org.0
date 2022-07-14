Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33F36574F43
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 15:35:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbiGNNfd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 09:35:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230082AbiGNNfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 09:35:33 -0400
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F2024E62F
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 06:35:32 -0700 (PDT)
Received: by mail-ua1-x930.google.com with SMTP id n3so631914uak.13
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 06:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=YeEFrOpnueqp49lpSsCtkyhW66cD5QzqZPU5hyS5TkM=;
        b=aLFDle645Z0wDl44rnT0d3YQsR/8f3fh1inD03fVlIOAsKl/LzjsWHNp2Jei93NW+g
         L+4RffYqJP8eTl8oN0iaF++8VNBqiEpbvcIcRQyUDvc08dEmEW1ITOsG4NhzY6gD8KiW
         ogauXRvPjEFfaNGYDmjaHfX0nN3sdWACfKfvCqjLch11it9qF3/e6sNlfZlvg2QAMZb7
         adbgbT19QJm/p38Z/knMNpyP56NXF0+8Tmw1kwj+Dmrz12HyQlX4QFl5jF171wyMui8h
         +cFJd6V6G8fBF65FjbqqxhlP/kSuwiRRcLRWXLq3V0RW9kAGbJ1/2hQgEZ5MsUbClzHW
         /Uxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=YeEFrOpnueqp49lpSsCtkyhW66cD5QzqZPU5hyS5TkM=;
        b=jQojlj6IheB0f6ipV/ZTfaanQmbUgRaYzDRe7/PFatGf3zoSMi0W+X3eO/Zvvz98Jk
         U7TQhvD3tmK6wxOBsNc4PI4KN7fZqCOJLuFWdQwi+EqJoRVcrHpRD/9DvX+QjSQlc3v4
         WK/IQgcy5W5ZydbWfq1rKLoS/O8su4M6ZgXn1F7dvyqhgwcLSfiILur82SAbnjEXCLlh
         QBaFZliJ7nXGhjuIvzmrLr97frPwAWkq/+9ODLfAdsnwhZ6Kbb3ukNnvBMgw7LQICtzj
         IrWt3Fy9WomNoKbVXJSRDDzW943IjJQ35/VeH6yKzcWuF7MfLUaNNarGK/cbBX3jTPgP
         a3lQ==
X-Gm-Message-State: AJIora9SAXjGjxHJzTpXGKZUv04hwscg2lY5GBY6qdTGOON6UCEzr6O1
        aNXXy97jfq+5tYt5CTi426PAnDtQXrQHTb7f4Ck=
X-Google-Smtp-Source: AGRyM1sPqyhh0HCeRrA1N7ys1Ssj5YWd+zqCPYS3JcP7m9O9iCy7FvuOA3jSj12PLw7ijrzbNOg7EKSOUX6pYgTfpIg=
X-Received: by 2002:ab0:36f2:0:b0:383:5a85:f3ad with SMTP id
 x18-20020ab036f2000000b003835a85f3admr3363054uau.75.1657805731425; Thu, 14
 Jul 2022 06:35:31 -0700 (PDT)
MIME-Version: 1.0
Sender: mohamednacanabo59@gmail.com
Received: by 2002:a59:a92f:0:b0:2d0:6d19:d4b0 with HTTP; Thu, 14 Jul 2022
 06:35:30 -0700 (PDT)
From:   Lisa Williams <lw23675851@gmail.com>
Date:   Thu, 14 Jul 2022 14:35:30 +0100
X-Google-Sender-Auth: pbyW1fZ_gBOkZjIkfE3JvlBANm8
Message-ID: <CAMnfAFXaA+3Qh0==wACGx-wNW9eCb+X-oSbcDiOoaZiOaNPZKg@mail.gmail.com>
Subject: My name is Dr Lisa Williams
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dear,

My name is Dr Lisa Williams from the United States.I am a French and
American nationality (dual) living in the U.S and sometimes in France
for Work Purpose.

I hope you consider my friend request. I will share some of my pics
and more details about myself when I get your response.

Thanks

With love
Lisa
