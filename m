Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1976EBBFC
	for <lists+devicetree@lfdr.de>; Sun, 23 Apr 2023 00:16:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbjDVWQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Apr 2023 18:16:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbjDVWQx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Apr 2023 18:16:53 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C16269D
        for <devicetree@vger.kernel.org>; Sat, 22 Apr 2023 15:16:31 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f1958d3a53so16028705e9.0
        for <devicetree@vger.kernel.org>; Sat, 22 Apr 2023 15:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20221208.gappssmtp.com; s=20221208; t=1682201789; x=1684793789;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FAcEHpRyaO1VrwCQ6C3hSL9cSf9f8unSS7yQpJNhFBc=;
        b=DY2Ad11m7+YFSzcEHfjQbGflLO9YolWZmtHC3UbbnuaeFjwvWcBkEsBgL770Q0lyCg
         y8oszNz+TSSCwuRwIU+sfbznw4vZavqYJMUON3VuZYItB2hGiHCQGOL79QWSvhcSSz3/
         XbH7WL9PyVf3GMKTcVPV48VZrZIuuTMf8rTV7L1TMHci4DA/mYUUuDTLRCj1JLVDWfup
         1kogRGRxTV7OM3hPdIUoiLxM6hMnU6mbk3X6D+2RV8QdM0dStMn27GB/tXoPSGtYJ8ud
         hEdkVx//sOx35csdDfne5JqY5zAyF2t75kXExTaMxI7HRn6JcbNIBDydrhwft5NP1Qaf
         Rn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682201789; x=1684793789;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FAcEHpRyaO1VrwCQ6C3hSL9cSf9f8unSS7yQpJNhFBc=;
        b=hk+m58LGmfcEAMuS543w1fdk75R9OQ20ZrSFiAkpyWagxvstPJcJArNwdaCy/PdUum
         HsItGKJ4zXxB3d7qOP7kJwcM8IA4fJR2+gDhA0JyfErPzadHe5RyTIKWBHZPTFGCvAU3
         71MX6ZVpo1fg22AjZH0dJxRjDp9oZpFRSIsZB5qafsYs2lkSxq5S+qL8wa9ID/42fWt8
         jAfe+cPpmZWiNX/NUWqPztd8DFC90pn3PDVOieCdQhIRXeJvKgJA2Y7JPBQhv0KfFsHg
         znOQIutN3uTshkldua+NcWgo16rHp65L37jnIz7CtyNIGdHnkcTpngjHKQUCs77jgua0
         nrAw==
X-Gm-Message-State: AAQBX9fR2J7tpT8xyMeJy+yiRTbzt8HPVfmf+JwwoJR/jlFuJhRUh4Rc
        l70d8nx1lIslqrBCCKtfCTSoSg==
X-Google-Smtp-Source: AKy350aUkncBG1Wucp0ooIQNdZWBpg4cRTj2E6ZWGyiW+vfE3DG9fe5mIkySexaG3ugZmz1U0Wyj4w==
X-Received: by 2002:a5d:6711:0:b0:2fe:562c:c0e6 with SMTP id o17-20020a5d6711000000b002fe562cc0e6mr6183440wru.42.1682201789595;
        Sat, 22 Apr 2023 15:16:29 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id w6-20020adfee46000000b002f0442a2d3asm7399795wro.48.2023.04.22.15.16.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Apr 2023 15:16:29 -0700 (PDT)
Message-ID: <c0a231db-ba7c-c540-a745-3fd3dc47abe0@nexus-software.ie>
Date:   Sat, 22 Apr 2023 23:16:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 00/14] Add Qualcomm PMIC TPCM support
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
 <CRVOZOPMKBX4.2T7FOCWF0RKBJ@otso>
 <10551f5e-4516-c0cc-0b04-73aa38f80a2c@linaro.org>
 <CRWA2OP2T6KT.RCWAVWF5Q2T2@otso>
 <ccc9fa4c-ca52-d8f3-a8b3-45031bea673f@linaro.org>
 <CRYUWMIJDSB2.BJWEPJEA3Y1D@otso>
 <75d00efb-ff3c-b1f8-a141-3fa78a39557a@linaro.org>
 <CS2D1E4ZYKZ8.2CWDCP9VR0C11@otso>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <CS2D1E4ZYKZ8.2CWDCP9VR0C11@otso>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_TEMPERROR autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2023 11:26, Luca Weiss wrote:
> With the "user-space triggered role-switching" patch I can see that
> whatever scenario the USB-C port is in, the role is stuck on "device".

Hmm.

Could you share a branch ?

---
bod
