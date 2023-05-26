Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 299CE711F6D
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 07:56:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232211AbjEZF4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 01:56:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjEZF4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 01:56:50 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A3B4E7
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 22:56:49 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-623852980dfso3587956d6.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 22:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1685080608; x=1687672608;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:from:to:cc:subject:date:message-id:reply-to;
        bh=tgXESvvpBdKfPykD1OIAH+2kHSLLh3i8sS02spinTlU=;
        b=fJxx57TlNlWjJn+T/e88NSrjkoqniogo3I0rgINUA9fqZT+Kmz3/5fDOK+HAmAqfqa
         WMIvEf2mEXrCx/ikk5z4L3FhetP3ic5q21X3h0fMSpyQr1D+eu9Av65DM3Cjr6Tu5+DV
         Voo7/8EPx1pN9xz9r+nASVmwq648XUoJSd9DU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685080608; x=1687672608;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tgXESvvpBdKfPykD1OIAH+2kHSLLh3i8sS02spinTlU=;
        b=Ub2geyac0QJJK18s0VkYTP+Pe/NSLTrMNkNjuvdDjGEKktxxZG6ZAhkiD3a+j5gAqT
         /2xUs9oXr1fa3Hj5JzIhWi33e42Ep3qN0JRQd5qSez2amO6MqQmNKfgnSynTru4fnmND
         LPEfTDwN92+eVFyyQBphOF0GwqbEBTk7pUyqa5FPnImxYwfLCCMwOyHZ3mPMyCSddgY9
         jc+VfW7wDUEdTsNubzfiVjqUzUoU+D+XFPKa8KwJG7JsJexfkkegAaX9qCjkNht3+ZPx
         mnjPuDK5vCDl4cfxse2T82IgD1s3AI+XjHmO8jwb2s0IlcHV7DgFSE+aKihhrQxk7YUJ
         5xXA==
X-Gm-Message-State: AC+VfDwqW905tIgwX48ej4AqfqAM42fs/zkCBzcjXB9m/zC4+uuc7BoJ
        E8A15CBMmdjhfTAJ4qavU5hH9w==
X-Google-Smtp-Source: ACHHUZ5aRUOapKQTIHnn28eRFWQCc52hzwhT8+n+QDGemkZA3kUbXyd7Wbz9emBYmeel93N56vRCwQ==
X-Received: by 2002:a05:6214:19cd:b0:623:9f35:edd5 with SMTP id j13-20020a05621419cd00b006239f35edd5mr885875qvc.42.1685080608263;
        Thu, 25 May 2023 22:56:48 -0700 (PDT)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id a2-20020a0ce342000000b006238888dbffsm961108qvm.139.2023.05.25.22.56.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 May 2023 22:56:47 -0700 (PDT)
Subject: Re: dt_binding_check report false alarm?
To:     Conor Dooley <conor@kernel.org>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        f.fainelli@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
 <20230525-wrench-lushness-f9a1ad022798@wendy>
 <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
 <20230525-unlearned-trusting-1ed0cf6a6364@spud>
 <c7fe5781-5213-8a39-f7f7-a1f5e94249cd@broadcom.com>
 <20230525-mating-mutt-36a506094d38@spud>
From:   William Zhang <william.zhang@broadcom.com>
Message-ID: <58dbfc50-45ac-389d-10aa-740aee150b16@broadcom.com>
Date:   Thu, 25 May 2023 22:56:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20230525-mating-mutt-36a506094d38@spud>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
        boundary="00000000000018e3b705fc9267bd"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--00000000000018e3b705fc9267bd
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 05/25/2023 11:12 AM, Conor Dooley wrote:
> On Thu, May 25, 2023 at 10:10:46AM -0700, William Zhang wrote:
>>
>>
>> On 05/25/2023 08:33 AM, Conor Dooley wrote:
>>> On Thu, May 25, 2023 at 08:23:30AM -0700, William Zhang wrote:
>>>> Sorry for the multiple emails. Our mail relay server was not working
>>>> properly.
>>>
>>> I only got one /shrug
>>>
>> That's good.  Maybe it only flushed queued email to internal email accounts.
>>
>>>> On 05/25/2023 06:23 AM, Conor Dooley wrote:
>>>>> Hey William,
>>>>>
>>>>> On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
>>>>>> Hi,
>>>>>>
>>>>>> It seems dt_binding_check reports a false error when run on this
>>>>>> modified yaml. I picked this simple file just to demostrate this issue.
>>>>>> Basically I made the interrupts and interrupt-names as optional
>>>>>> properties. But when there are two interrupts present, then
>>>>>> interrupt-names are required.  However in the example, I don't define
>>>>>> interrupts and interrupt-name at all, the dt binding check reports error
>>>>>> that interrupt-names are required:
>>>>>
>>>>> Rob and Krzysztof would know more than me, but since they're not
>>>>> around...
>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>>>>> index 563a31605d2b..c37a3a64a78c 100644
>>>>>> --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>>>>> @@ -32,11 +32,18 @@ properties:
>>>>>>       clock-names:
>>>>>>         const: ipg
>>>>>> +allOf:
>>>>>> +  - if:
>>>>>> +      properties:
>>>>>> +        interrupts:
>>>>>> +          minItems: 2
>>>>>
>>>>> ...I don't think you can actually do this and "minItems: 2" will always
>>>>> evaluate to true because it is an assignment. Don't hold me to that
>>>>> though! The standard pattern here is to do:
>>>>> allOf:
>>>>>      - if:
>>>>>          properties:
>>>>>            compatible:
>>>>>              contains:
>>>>>                const: foo
>>>>>        then:
>>>>>          required:
>>>>>            - interrupt-names
> 
>>>> Our device can use one or two interrupt, or choose to not use interrupt at
>>>> all(polling mode). Interrupt names is only required when there are two
>>>> interrupts(so the driver code can tell which is which).  So I will need to
>>>> check if it contains two interrupts. My check does work if I have two
>>>> interrupt but don't have interrupt name, the check catches the error.  If I
>>>> have one interrupt without interrupt name, the check pass. Only when I does
>>>> not have interrupt and interrupt name,  it falsely report error.  Looks to
>>>> me that it does not treat minItem = 0 case properly.
>>>
>>> Right. I would not bother with the "only interrupt-names when 2
>>> interrupts" stuff & do the simple thing of always making it required
>>> when you have interrupts.
>>> Then you can use allOf and oneOf to allow for both schemes for the new
>>> device and keep enforcement of 2 items for the existing one.
> 
>> I agree it is better to keep it simple. Sorry I am still new to yaml but
>> what is the best way to check if interrupt property exist?  What I can think
>> of is similar
>>
>>   - if:
>>        properties:
>>          interrupts:
>>            minItems: 1
>>      then:
>>        required:
>>          - interrupt-names
>>
>> But this still reports the same error when there is no interrupt.
> 
> Yeah, you don't need to do something like that.
> It's hard to say exactly without your actual patch, but I think you're
> over complicating things :)
> What you seem to want to do (from where I am sitting) is something like:
> 	dependencies:
> 	  interrupts: interrupt-names
> 
> and not put interrupts/interrupt-names in the required bit.
> That way, if you have interrupts, you need to have interrupt-names too
> but you can have neither.
> 
> But yeah, without something resembling the "real" patch, rather than
> hacking at the fsl one, it is kinda hard to say.
> 
> Cheers,
> Conor.
> 
> 
Yeah this dependencies rule works and it is much simple. Just need to 
add the bracket around the interrupt-names to make it work:
   dependencies:
     interrupts: [interrupt-names]
Do we have any document list all these supported keywords/rules/syntax 
for yaml dts?

My file is actually brcm,brcmnand.yaml but it is little bit complicated 
to demonstrate the issue so just randomly pick this simple one.  Thanks 
Conor, Robin and all the for help.   Will submit an official patches for 
brcmnand.yaml change.

>>
>>>>>> +    then:
>>>>>> +      required:
>>>>>> +        - interrupt-names
>>>>>> +
>>>>>>     required:
>>>>>>       - compatible
>>>>>>       - reg
>>>>>> -  - interrupts
>>>>>> -  - interrupt-names
>>>>>>       - clocks
>>>>>>       - clock-names
>>>>>> @@ -49,6 +56,4 @@ examples:
>>>>>>             reg = <0x53fac000 0x4000>;
>>>>>>             clocks = <&clks 111>;
>>>>>>             clock-names = "ipg";
>>>>>> -        interrupts = <49>, <50>;
>>>>>> -        interrupt-names = "scm", "smn";
>>>>>>         };
>>>>>> -- 
>>>>>> 2.34.1
>>>>>>
>>>>>
>>>>>
>>>
>>>
> 
> 

--00000000000018e3b705fc9267bd
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
YDZuuBJwnyCzevMoPtVYPharioL5H3BRnQi8YoTXH7/uRo33dewYFm474yFjwwnt82TFtveVZkVq
6h4WIQ4wTcwFfET8zMkELnGzS5SHCl8sPD+lNxxJ1JDZYwIDAQABo4IB2zCCAdcwDgYDVR0PAQH/
BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9i
YWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUF
BzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAy
MDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xv
YmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAlBgNV
HREEHjAcgRp3aWxsaWFtLnpoYW5nQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAf
BgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUq65GzwZxydFHjjYEU/9h
xHhPWlwwDQYJKoZIhvcNAQELBQADggEBAA2hGG3JPAdGPH0ZdohGUCIVjKz+U+EFuIDbS6A/5jqX
VhYAxZlzj7tSjUIM7G7IhyfqPC46GKJ/4x+Amz1Z6YxNGy71L68kYD6hIbBcA5AM42QBUufly6Oa
/ppSz3WoflVyFFQ5YXniZ+eU+2/cdnYZg4aVUnFjimOF5o3NfMLzOkhQNxbaDjFUfUYD8hKmU6v4
0vUBj8KZ9Gi1LIagLKUREn8jku0lcLsRbnJ5Ey5ScajC/FESPyYWasOW8j8/1EoJksmhbYGKNS6C
urb/KlmDGfVrIRYDbL0ckhGQIP5c6L+kSQZ2sHnQK0e0WgIaZYxaPYeY5u0GLCOze+3vyRMxggJt
MIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxuh2XG3FXRL1W
JOEwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIN//TMiXzbQK6MPVB17ug7i/Nu/3
phMzaljXTg9FZpklMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIz
MDUyNjA1NTY0OFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQCi5Hoj0WlM8kBne8EtcuZRXXtP0Ts20wb7i0Eyzre+JqC+
aG9APl6gGUdqoUxADWblWl4tZqNLPjrMpEbgoQjXoNWTZjNmGw2ZFCo8g2As9lgSPvPjZSHT7Ao6
MaduDwqXySeJdRjP17IB3RCkSwKl6ilqis8GHI3PDnCApl9iA62yh+ZB1SjCkOhJmY7Bx7vB4Upi
d8pbQugpPbRMaTEm3vdDLxZ58ZM0Kv8R6g0FZzYZO/HVuLvaZVvky8LH6dt1yUrmJaQgz7EziiK2
Ueild5I1eSDiLjAmuw29WO4yHXuyipGWCEY8c4FhOyzXxuM+Yl8/kiYp6OUvyGNdQ4xg
--00000000000018e3b705fc9267bd--
